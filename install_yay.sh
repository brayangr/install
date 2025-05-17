#!/bin/bash

current_dir=$(pwd)
echo $current_dir
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

rm -rf /tmp/yay

cd $current_dir

