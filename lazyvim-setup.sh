#!/bin/bash

sudo pacman -Syu neovim git gcc make unzip ripgrep fd --noconfirm

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git

echo "Ya Puede Usar Neovim con LazyVim ejecute nvim"
