#!/usr/bin/env bash
# clipvault clipbourd history installer
wget https://github.com/erans/hyprmon/releases/latest/download/hyprmon-linux-amd64.tar.gz
tar -xf hyprmon-linux-amd64.tar.gz
cp hyprmon-linux-amd64 /usr/bin/hyprmon
chmod a+x /usr/bin/hyprmon
