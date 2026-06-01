#!/bin/bash
# Backup dotfiles to ~/Dotfiles repository folder

cp -R ~/.config/mpv .config

cp -R ~/.config/qtile .config

rm -r ~/Dotfiles/.config/qtile/backup
rm -r ~/Dotfiles/.config/qtile/__pycache__