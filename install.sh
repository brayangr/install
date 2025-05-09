#!/usr/bin/env bash

# Install dependencies
sudo pacman -Syyu kitty curl git cmake vlc stow nvim adobe-source-han-sans-jp-fonts rbenv docker

# Install zellij


chmod +x install_zellij.sh
./install_zellij.sh

chmod +x install_zsh.sh
./install_zsh.sh

chmod +x install_rbenv.sh
./install_rbenv.sh

cd $HOME/Code/install/dotfiles
stow -v --adopt --target=$HOME/.config .config
