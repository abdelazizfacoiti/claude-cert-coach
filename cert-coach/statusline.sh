#!/usr/bin/env bash
d="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"
t="$(tr -d '[:space:]' < "$d/config" 2>/dev/null)"
f="$d/tips/${t:-developer}.txt"
[ -f "$f" ] && printf '🎓 %s\n' "$(shuf -n1 "$f")"
