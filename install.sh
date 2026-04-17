#!/usr/bin/env bash

DOTFILES="$HOME/GitHub/pupaland"

mkdir -p "$HOME/.config"

ln -sfn "$DOTFILES/hypr" "$HOME/.config/hypr"
ln -sfn "$DOTFILES/kitty" "$HOME/.config/kitty"
ln -sfn "$DOTFILES/waybar" "$HOME/.config/waybar"
ln -sfn "$DOTFILES/wofi" "$HOME/.config/wofi"
