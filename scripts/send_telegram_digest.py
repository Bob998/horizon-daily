#!/usr/bin/env python3
import os
import re
import sys
import time
import html
from pathlib import Path
from datetime import datetime
import requests


MAX_LEN = 3500


def find_latest_summary(project_dir: Path) -> Path | None:
    """
    优先找 docs/_posts/*-summary-zh.md
    找不到再找 output/*-summary-zh.md
    """
    candidates = []

    docs_posts = project_dir / "docs" / "_posts"
    if docs_posts.exists():
        candidates.extend(sorted(docs_posts.glob("*-summary-zh.md"), reverse=True))

    output_dir = project_dir / "output"
    if output_dir.exists():
        candidates.extend(sorted(output_dir.glob("*-summary-zh.md"), reverse=True))

    return candidates[0] if candidates else None


def remove_front_matter(text: str) -> str:
    return re.sub(r"\A---\n.*?\n---\n", "", text, flags=re.S)


def markdown_to_telegram_text(md: str) -> str:
    md = remove_front_matter(md)

    # 去锚点
    md = re.sub(r'<a id=".*?"></a>\n?', "", md)

    # details / summary 简化
    md = re.sub(r"<details><summary>(.*?)</summary>", r"\n补充链接：\1\n", md, flags=re.S)
    md = md.replace("</details>", "")

    # ul / li 简化
    md = md.replace("<ul>", "").replace("</ul>", "")
    md = md.replace("<li>", "• ").replace("</li>", "")

    # Markdown 链接 [文字](url) -> 文字: url
    md = re.sub(r"\[([^\]]+)\]\((https?://[^)]+)\)", r"\1: \2", md)

    # 标题处理
    md = re.sub(r"^##\s+(.*)$", r"\n【\1】", md, flags=re.M)
    md = re.sub(r"^#\s+(.*)$", r"\n\1", md, flags=re.M)

    # 粗体
    md = re.sub(r"\*\*(.*?)\*\*", r"\1", md)

    # 引用符号 > 去掉
    md = re.sub(r"^>\s?", "", md, flags=re.M)

    # 多余空行收敛
    md = re.sub(r"\n{3,}", "\n\n", md).strip()

    return md


def split_text(text: str, max_len: int = MAX_LEN) -> list[str]:
    if len(text) <= max_len:
        return [text]

    parts = []
    current = ""

    for block in text.split("\n\n"):
        candidate = block if not current else current + "\n\n" + block
        if len(candidate) <= max_len:
            current = candidate
        else:
            if current:
                parts.append(current)
                current = block
            else:
                # 单个 block 太长，按行切
                buf = ""
                for line in block.splitlines():
                    candidate2 = line if not buf else buf + "\n" + line
                    if len(candidate2) <= max_len:
                        buf = candidate2
                    else:
                        if buf:
                            parts.append(buf)
                        buf = line
                if buf:
                    current = buf

    if current:
        parts.append(current)

    return parts


def send_message(bot_token: str, chat_id: str, text: str):
    url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
    resp = requests.post(
        url,
        data={
            "chat_id": chat_id,
            "text": text,
            "disable_web_page_preview": True,
        },
        timeout=30,
    )
    resp.raise_for_status()
    return resp.json()


def main():
    project_dir = Path(__file__).resolve().parent.parent

    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    chat_id = os.environ.get("TELEGRAM_CHAT_ID")

    if not bot_token or not chat_id:
        print("Missing TELEGRAM_BOT_TOKEN or TELEGRAM_CHAT_ID", file=sys.stderr)
        sys.exit(1)

    # 可手动传文件路径；不传就自动找最新的 zh 摘要
    if len(sys.argv) > 1:
        summary_file = Path(sys.argv[1]).resolve()
    else:
        summary_file = find_latest_summary(project_dir)

    if not summary_file or not summary_file.exists():
        print("No summary file found", file=sys.stderr)
        sys.exit(2)

    raw = summary_file.read_text(encoding="utf-8", errors="replace")
    content = markdown_to_telegram_text(raw)

    title = f"Horizon Daily | {datetime.now().strftime('%Y-%m-%d')}"
    final_text = f"{title}\n\n{content}".strip()

    parts = split_text(final_text, MAX_LEN)

    for i, part in enumerate(parts, 1):
        if len(parts) > 1:
            part = f"({i}/{len(parts)})\n{part}"
        send_message(bot_token, chat_id, part)
        time.sleep(0.5)

    print(f"Sent {len(parts)} Telegram message(s) from: {summary_file}")


if __name__ == "__main__":
    main()
