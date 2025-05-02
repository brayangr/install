#!/usr/bin/env bash

# Install dependencies
sudo apt update
sudo apt upgrade -y
sudo apt install kitty zsh curl git build-essential cmake vlc stow -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install neovim
git clone https://github.com/neovim/neovim Code/nvim
cd Code/nvim
git checkout stable
ggpull
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd $HOME

# Install zellij


chmod +x Code/scripts/install_zellij.sh
./Code/scripts/install_zellij.sh

cd $HOME/Code/scripts/dotfiles
stow -v --adopt --target=$HOME/.config .config
