#!/usr/bin/env bash
# script for installing hyprshot (screenshot tool (cli only))
cd /usr/share
git clone https://github.com/Gustash/hyprshot.git Hyprshot
ln -s /usr/share/Hyprshot/hyprshot /usr/bin
chmod +x Hyprshot/hyprshot
