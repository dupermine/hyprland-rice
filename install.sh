#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm swww waybar

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.config

for dir in "$SCRIPT_DIR"/*; do
    if [ -d "$dir" ] && [ "$(basename "$dir")" != ".git" ]; then
        cp -r "$dir" ~/.config/
    fi
done
