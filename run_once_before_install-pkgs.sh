#!/bin/bash

# detect/return non-zero errors & treat unassigned vars as errors
set -eu

sudo apt update
sudo apt upgrade

sudo apt install neovim

mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

curl -sS https://starship.rs/install.sh | sh
