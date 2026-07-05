#!/bin/bash
# Backup dotfiles to ~/Dotfiles repository folder

cp -R ~/.config/mpv .config
cp -R ~/.config/fish .config
cp -R ~/.config/qtile .config
cp -R ~/.config/alacritty .config
cp -R ~/.config/kitty .config
cp -R ~/.config/picom .config
cp -R ~/.config/i3 .config
cp -R ~/.config/polybar .config
cp -R ~/.config/xdg-desktop-portal .config

rm -r ~/Dotfiles/.config/qtile/backup
rm -r ~/Dotfiles/.config/qtile/__pycache__
rm ~/Dotfiles/.config/fish/fish_variables