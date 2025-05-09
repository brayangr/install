#!/usr/bin/env bash

sudo pacman -S docker

sudo systemctl enable docker.socket

sudo usermod -a -G docker $USER
