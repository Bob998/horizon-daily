#!/usr/bin/env bash
set -euo pipefail

export PATH="/opt/homebrew/bin:/Users/bigo/.git-ai/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

UV_BIN="/opt/homebrew/bin/uv"
GIT_BIN="/Users/bigo/.git-ai/bin/git"
CURL_BIN="/usr/bin/curl"

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
echo "[$(timestamp)] PATH=$PATH"
echo "[$(timestamp)] Using uv: $UV_BIN"
echo "[$(timestamp)] Using git: $GIT_BIN"
echo "[$(timestamp)] Using curl: $CURL_BIN"

if [ ! -x "$UV_BIN" ]; then
  echo "[$(timestamp)] ERROR: uv not executable: $UV_BIN"
  exit 1
fi

if [ ! -x "$GIT_BIN" ]; then
  echo "[$(timestamp)] ERROR: git not executable: $GIT_BIN"
  exit 1
fi

cd "$PROJECT_DIR"

# 加载项目 .env（如果存在）
if [ -f "$PROJECT_DIR/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  source "$PROJECT_DIR/.env"
  set +a
fi

UPDATED=0

# 1. Pull latest code
echo "[$(timestamp)] Pulling latest code..."
"$GIT_BIN" pull --quiet origin main

# 2. Install/update dependencies
echo "[$(timestamp)] Syncing dependencies..."
"$UV_BIN" sync --quiet

# 3. Run Horizon
echo "[$(timestamp)] Running Horizon..."
"$UV_BIN" run horizon --hours 24

# 4. Commit and push generated content only if changed
echo "[$(timestamp)] Checking for changes..."
"$GIT_BIN" add -A

if "$GIT_BIN" diff --cached --quiet; then
  echo "[$(timestamp)] No changes detected."
else
  echo "[$(timestamp)] Changes detected, committing..."
  "$GIT_BIN" commit -m "daily update: $(date '+%Y-%m-%d %H:%M:%S')"
  "$GIT_BIN" push origin main
  UPDATED=1
fi

# 5. Telegram notify
if [ -n "${TELEGRAM_BOT_TOKEN:-}" ] && [ -n "${TELEGRAM_CHAT_ID:-}" ] && [ -n "${HORIZON_PAGES_URL:-}" ]; then
  echo "[$(timestamp)] Sending Telegram notification..."
  if [ "$UPDATED" -eq 1 ]; then
    MESSAGE="✅ Horizon 已更新
${HORIZON_PAGES_URL}"
  else
    MESSAGE="ℹ️ Horizon 无更新
${HORIZON_PAGES_URL}"
  fi

  "$CURL_BIN" -s "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    --data-urlencode "text=${MESSAGE}" >/dev/null || true
else
  echo "[$(timestamp)] Telegram env vars not fully set, skipping notification."
fi

echo "[$(timestamp)] Done."
