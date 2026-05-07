#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/daily-run-$(date '+%Y-%m-%d').log"

exec >> "$LOG_FILE" 2>&1

LOG_PREFIX="[$(date '+%Y-%m-%d %H:%M:%S')]"

echo "$LOG_PREFIX Starting Horizon daily run..."

cd "$PROJECT_DIR"

# 加载环境变量
if [ -f "$HOME/.zshrc" ]; then
  source "$HOME/.zshrc" || true
fi

# 1. Pull latest code
echo "$LOG_PREFIX Pulling latest code..."
git pull --quiet origin main

# 2. Install/update dependencies
echo "$LOG_PREFIX Syncing dependencies..."
uv sync --quiet

# 3. Run Horizon
echo "$LOG_PREFIX Running Horizon..."
uv run horizon --hours 24

# 4. Commit and push generated docs/data if changed
echo "$LOG_PREFIX Committing updates..."
git add -A
git commit -m "daily update: $(date '+%Y-%m-%d')" || echo "$LOG_PREFIX Nothing to commit."
git push origin main

# 5. Telegram notify
if [ -n "${TELEGRAM_BOT_TOKEN:-}" ] && [ -n "${TELEGRAM_CHAT_ID:-}" ] && [ -n "${HORIZON_PAGES_URL:-}" ]; then
  echo "$LOG_PREFIX Sending Telegram notification..."
  curl -s "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    --data-urlencode "text=✅ Horizon 已更新
${HORIZON_PAGES_URL}" >/dev/null || true
else
  echo "$LOG_PREFIX Telegram env vars not fully set, skipping notification."
fi

echo "$LOG_PREFIX Done."
