#!/bin/sh
set -e

missing_deps=false
exists() { 
    if ! command -v "$1" >/dev/null 2>&1; then
        echo The program "$1" is missing, you need to install it 1>&2
        missing_deps=true
    fi
}

exists git
exists rsync
exists realpath
exists dirname

$missing_deps && exit 1

repo_dir="$(dirname "$( realpath "$0")" )"

rsync "$HOME/.config/nvim" "$repo_dir" --delete --recursive
rm "$repo_dir/nvim/lazy-lock.json"
rm "$repo_dir/nvim/.neoconf.json"
