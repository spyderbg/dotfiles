#!/usr/bin/env bash

set -euo pipefail

REPO="https://github.com/spyderbg/dotfiles.git"
BRANCH="main"
SKIP="other"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

git clone --depth 1 --branch "$BRANCH" "$REPO" "$TMP"

find "$TMP" -mindepth 1 -maxdepth 1 \
  ! -name "$SKIP" \
  -exec command mv -i -- {} "$HOME" \;

echo "Dotfiles installed. Run 'exec zsh' (or logout/back in) to apply."