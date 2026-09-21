#!/usr/bin/env bash

set -euo pipefail

REPO="https://github.com/spyderbg/dotfiles.git"
BRANCH="main"
SKIP="other"
TMP="$(mktemp -d)"
STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP_DIR="$HOME/.dotfiles_backup_$STAMP"
trap 'rm -rf "$TMP"' EXIT

git clone --depth 1 --branch "$BRANCH" "$REPO" "$TMP"

mapfile -d '' entries < <(find "$TMP" -mindepth 1 -maxdepth 1 ! -name "$SKIP" -print0)

for entry in "${entries[@]}"; do
  base="$(basename "$entry")"
  dest="$HOME/$base"

  if [[ "$base" == .* ]] && [ -e "$dest" ]; then
    mkdir -p "$BACKUP_DIR"
    command mv -- "$dest" "$BACKUP_DIR/$base"
    echo "Backed up $base -> $BACKUP_DIR/$base"
  fi

  command mv -i -- "$entry" "$HOME/"
done

echo "Dotfiles installed. Backups (if any) in $BACKUP_DIR"
echo "Run 'exec zsh' (or logout/back in) to apply."