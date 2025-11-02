#!/usr/bin/env bash

# Install dependencies
sudo pacman -Syu --noconfirm kitty curl git cmake base-devel vlc stow nvim adobe-source-han-sans-jp-fonts rbenv nvm otf-font-awesome man discord ttf-jetbrains-mono-nerd alsa-scarlett-gui libreoffice-fresh dbeaver

# Install yay
chmod +x install_yay.sh
./install_yay.sh

yay -Syu zellij spotify visual-studio-code-bin doppler-cli noto-color-emoji-fontconfig aws-session-manager-plugin windsurf

chmod +x install_zsh.sh
./install_zsh.sh

chmod +x install_docker.sh
./install_docker.sh

cd dotfiles
stow -v --adopt --target=$HOME/.config .config
stow -v --adopt --target=$HOME/.scripts .scripts
