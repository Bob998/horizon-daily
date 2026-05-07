#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/daily-run-$(date '+%Y-%m-%d').log"

exec >> "$LOG_FILE" 2>&1

timestamp() {
  date '+%Y-%m-%d %H:%M:%S'
}

echo "[$(timestamp)] Starting Horizon daily run..."

cd "$PROJECT_DIR"

# 加载项目 .env（如果存在）
if [ -f "$PROJECT_DIR/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  source "$PROJECT_DIR/.env"
  set +a
fi

# 1. Pull latest code
echo "[$(timestamp)] Pulling latest code..."
git pull --quiet origin main

# 2. Install/update dependencies
echo "[$(timestamp)] Syncing dependencies..."
uv sync --quiet

# 3. Run Horizon
echo "[$(timestamp)] Running Horizon..."
uv run horizon --hours 24

# 4. Commit and push generated content if changed
echo "[$(timestamp)] Committing updates..."
git add -A
git commit -m "daily update: $(date '+%Y-%m-%d')" || echo "[$(timestamp)] Nothing to commit."
git push origin main

# 5. Telegram notify
if [ -n "${TELEGRAM_BOT_TOKEN:-}" ] && [ -n "${TELEGRAM_CHAT_ID:-}" ] && [ -n "${HORIZON_PAGES_URL:-}" ]; then
  echo "[$(timestamp)] Sending Telegram notification..."
  curl -s "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    --data-urlencode "text=✅ Horizon 已更新
${HORIZON_PAGES_URL}" >/dev/null || true
else
  echo "[$(timestamp)] Telegram env vars not fully set, skipping notification."
fi

echo "[$(timestamp)] Done."
