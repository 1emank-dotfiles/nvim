#!/bin/sh
set -e
check_dependencies() {
        missing_deps=false
        while [ -n "$1" ]; do
                if ! command -v "$1" >/dev/null 2>&1; then
                        echo "$1" is missing 1>&2
                        missing_deps=true
                fi
                shift
        done
        if $missing_deps; then
                echo; echo The operation cannot proceed
                exit 1
        fi
}
check_dependencies git rsync realpath dirname

repo_dir="$(dirname "$( realpath "$0")" )"

rsync -v "$HOME/.config/nvim" "$repo_dir" --delete --recursive \
        --exclude=lazy-lock.json --exclude=.neoconf.json
