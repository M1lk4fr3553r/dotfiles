#!/bin/bash

# This does only work if the script is not called via a symlink.
# https://stackoverflow.com/a/246128
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Also glob hidden files
shopt -s dotglob

cd "$SCRIPT_DIR"

for file in *
do
	ln -s "$SCRIPT_DIR/$file" "$HOME/$file"
done
