#!/usr/bin/env bash
# Install the Fable Forge skill for your AI coding agent.
#
#   ./install.sh                    -> ~/.claude/skills   (Claude Code)
#   ./install.sh ~/.codex/skills    -> somewhere else     (Codex, other agents)
#   ./install.sh --force            -> replace an existing fable-forge folder
#   ./install.sh ~/.codex/skills --force
#
# Flags and the target path work in any order.
# Needs bash only. On Windows run it in Git Bash or WSL, not PowerShell.
# Safe to run more than once. Without --force, an existing install is left alone.

set -euo pipefail

TARGET=""
FORCE=""
for arg in "$@"; do
  case "$arg" in
    --force|-f) FORCE="--force" ;;
    -h|--help)  sed -n '2,11p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*)         echo "Unknown option: $arg" >&2; exit 1 ;;
    *)          TARGET="$arg" ;;
  esac
done
TARGET="${TARGET:-$HOME/.claude/skills}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$HERE/skills/fable-forge"
NAME="fable-forge"

say()  { printf '\033[1;32m>\033[0m %s\n' "$1"; }
warn() { printf '\033[1;33m!\033[0m %s\n' "$1"; }

if [ ! -f "$SRC/SKILL.md" ]; then
  echo "Cannot find $SRC/SKILL.md. Run this script from inside the cloned repo." >&2
  exit 1
fi

mkdir -p "$TARGET"
say "Installing $NAME into $TARGET"

if [ -e "$TARGET/$NAME" ] && [ "$FORCE" != "--force" ]; then
  warn "$TARGET/$NAME already exists and was left untouched."
  warn "To replace it with this version: $0 $TARGET --force"
  exit 0
fi

rm -rf "${TARGET:?}/$NAME"
cp -R "$SRC" "$TARGET/$NAME"
say "Installed: $(find "$TARGET/$NAME" -type f | wc -l | tr -d ' ') files in $TARGET/$NAME"
echo
echo "Restart your agent, then ask for a page. For example:"
echo "  Use fable-forge to redesign the landing page in this repo, phone first."
