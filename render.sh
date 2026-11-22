#!/bin/sh
# Render page.html to entry.png at exactly 1024x1024 with headless Chromium.
# Deterministic: same input produces the same bytes on every run.
set -eu

HERE=$(cd "$(dirname "$0")" && pwd)

CHROME=""
for candidate in "$HOME/.cache/ms-playwright/chromium-1255/chrome-linux64/chrome" /opt/meta-chromium/chrome chromium chromium-browser google-chrome google-chrome-stable; do
  case "$candidate" in
    /*) [ -x "$candidate" ] && CHROME="$candidate" && break ;;
    *) command -v "$candidate" >/dev/null 2>&1 && CHROME="$candidate" && break ;;
  esac
done
if [ -z "$CHROME" ]; then
  echo "render.sh: no Chromium/Chrome binary found" >&2
  exit 1
fi

PROFILE=$(mktemp -d)
trap 'rm -rf "$PROFILE"' EXIT INT TERM

"$CHROME" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --disable-extensions \
  --disable-background-networking \
  --hide-scrollbars \
  --force-device-scale-factor=1 \
  --window-size=1024,1024 \
  --virtual-time-budget=8000 \
  --user-data-dir="$PROFILE" \
  --screenshot="$HERE/entry.png" \
  "file://$HERE/page.html"

echo "wrote $HERE/entry.png"
