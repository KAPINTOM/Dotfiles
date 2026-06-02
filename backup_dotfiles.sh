#!/bin/bash
# Backup dotfiles to ~/Dotfiles repository folder

cp -R ~/.config/mpv .config
cp -R ~/.config/fish .config
cp -R ~/.config/qtile .config
cp -R ~/.config/alacritty .config
cp -R ~/.config/kitty .config
cp -R ~/.config/picom .config

rm -r ~/Dotfiles/.config/qtile/backup
rm -r ~/Dotfiles/.config/qtile/__pycache__