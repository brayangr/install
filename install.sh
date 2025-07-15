#!/usr/bin/env bash

# Install dependencies
sudo pacman -Syu --noconfirm sway kitty curl git cmake base-devel vlc stow nvim adobe-source-han-sans-jp-fonts rbenv nvm waybar otf-font-awesome xdg-desktop-portal-wlr dolphin networkmanager obsidian

# Install yay
chmod +x install_yay.sh
./install_yay.sh

yay -Syu flameshot-git brave-bin zellij

chmod +x install_zsh.sh
./install_zsh.sh

chmod +x install_docker.sh
./install_docker.sh

cd dotfiles
stow -v --adopt --target=$HOME/.config .config
