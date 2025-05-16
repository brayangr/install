#!/usr/bin/env bash

# Install dependencies
sudo pacman -Syu --noconfirm kitty curl git cmake vlc stow nvim adobe-source-han-sans-jp-fonts rbenv nvm bitwarden waybar otf-font-awesome xdg-desktop-portal-wlr
yay -S flameshot-gui

# Install zellij


chmod +x install_zellij.sh
./install_zellij.sh

chmod +x install_zsh.sh
./install_zsh.sh

chmod +x install_docker.sh
./install_docker.sh

cd $HOME/Code/install/dotfiles
stow -v --adopt --target=$HOME/.config .config
