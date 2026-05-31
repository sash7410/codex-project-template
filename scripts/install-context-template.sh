#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 /path/to/target/repo" >&2
  exit 1
fi

TARGET_DIR="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi

copy_if_missing() {
  local src="$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [[ -e "$dst" ]]; then
    echo "skip existing: ${dst#$TARGET_DIR/}"
  else
    cp "$src" "$dst"
    echo "copy: ${dst#$TARGET_DIR/}"
  fi
}

copy_tree_files() {
  local src_root="$1"
  local rel_root="$2"
  while IFS= read -r -d '' file; do
    local rel="${file#$src_root/}"
    copy_if_missing "$file" "$TARGET_DIR/$rel_root/$rel"
  done < <(find "$src_root" -type f -print0)
}

copy_if_missing "$TEMPLATE_ROOT/AGENTS.md" "$TARGET_DIR/AGENTS.md"
copy_tree_files "$TEMPLATE_ROOT/contexts" "contexts"

echo
echo "Codex context template installed into: $TARGET_DIR"
echo "Next: ask Codex to read AGENTS.md and contexts/index.md, then run an onboarding pass."
