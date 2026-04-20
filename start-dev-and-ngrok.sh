#!/usr/bin/env bash
set -euo pipefail

PORT=8080

log() {
  echo "[builder-quartz] $*"
}

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Error: required command '$1' is not installed or not in PATH." >&2
    exit 1
  fi
}

require_cmd node
require_cmd npm
require_cmd ngrok

if [[ ! -f "quartz.config.ts" ]]; then
  echo "Error: quartz.config.ts not found. Run this script from the builder-quartz project root." >&2
  exit 1
fi

# Start Quartz dev server if nothing is listening on PORT
if command -v lsof >/dev/null 2>&1; then
  if lsof -iTCP:"$PORT" -sTCP:LISTEN >/dev/null 2>&1; then
    log "Detected an existing server on port $PORT; not starting another dev server."
  else
    log "Starting Quartz dev server on http://localhost:$PORT ..."
    npx quartz build --serve &
    DEV_PID=$!
    log "Quartz dev server started with PID $DEV_PID"
  fi
else
  log "lsof not available; starting dev server without port check."
  npx quartz build --serve &
  DEV_PID=$!
  log "Quartz dev server started with PID $DEV_PID"
fi

log "Starting ngrok tunnel to http://localhost:$PORT ..."
log "If you have not already, run 'ngrok config add-authtoken YOUR_TOKEN' in another terminal first."
ngrok http "$PORT"

