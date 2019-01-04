#!/usr/bin/env bash
# Usage: `cd .vscode && ./snippets_backup.sh`
set -euf \
  -o nounset \
  -o errexit \
  -o noclobber \
  -o pipefail

shopt -s \
  extglob \
  globstar \
  nullglob

function print_separators() {
  printf -- '-%.0s' $(seq 1 $(($(tput cols) - 1))) $'\n'
}

DIR_VSCODE="$(pwd)"
DIR_BACKUP="${DIR_VSCODE}/snippets_backup/$(date -u +'%Y_%m_%d-%k_%M_%S_%Z')"

print_separators

mkdir -vp "${DIR_BACKUP}"
cd "${DIR_BACKUP}"
find "${DIR_VSCODE}" -mindepth 1 -maxdepth 1 \( -iname '*.code-snippets*' \) -exec cp -v -t "${DIR_BACKUP}" {} +
cd "${DIR_VSCODE}"

print_separators
