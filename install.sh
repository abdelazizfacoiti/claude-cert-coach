#!/usr/bin/env bash
# Install cert-coach into ~/.claude/skills and (optionally) enable the tip statusline.
set -e
src="$(cd "$(dirname "$0")" && pwd)/cert-coach"
mkdir -p ~/.claude/skills
ln -sfn "$src" ~/.claude/skills/cert-coach
[ -f "$src/config" ] || echo developer > "$src/config"
echo "Linked skill -> ~/.claude/skills/cert-coach"
if [ "$1" = "--statusline" ]; then
  command -v jq >/dev/null || { echo "jq required for --statusline"; exit 1; }
  f=~/.claude/settings.json; [ -f "$f" ] || echo '{}' > "$f"
  cp "$f" "$f.bak"
  jq '.statusLine={"type":"command","command":"~/.claude/skills/cert-coach/statusline.sh"}' "$f.bak" > "$f"
  echo "Statusline enabled (backup: $f.bak). Restart Claude Code."
fi
