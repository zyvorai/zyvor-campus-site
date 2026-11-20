#!/usr/bin/env bash
# Render scripts/og.html to assets/og.png and docs/assets/readme-hero.png (1200x630). Needs Google Chrome.
set -euo pipefail
HERE="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --window-size=1200,630 \
  --screenshot="$HERE/assets/og.png" "file://$HERE/scripts/og.html" >/dev/null 2>&1
cp "$HERE/assets/og.png" "$HERE/docs/assets/readme-hero.png"
