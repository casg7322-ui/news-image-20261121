#!/bin/sh
# Render page.html to entry.png (1024x1024) with headless Chromium.
# Usage: ./render.sh [output-dir]  (default: ./out)
set -eu
DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="${1:-$DIR/out}"
mkdir -p "$OUT"
CHROME="$HOME/.cache/ms-playwright/chromium_headless_shell-1255/chrome-headless-shell-linux64/chrome-headless-shell"
"$CHROME" --headless --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1024,1024 \
  --screenshot="$OUT/entry.png" "file://$DIR/page.html"
ls -l "$OUT/entry.png"
