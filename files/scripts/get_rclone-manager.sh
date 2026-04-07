#!/usr/bin/env bash


URL="$(curl -sL https://github.com/Zarestia-Dev/rclone-manager/releases/latest/download/latest.json | jq '.platforms."linux-x86_64-rpm".url' -r)"

echo -oL rcm.rpm $URL

dnf install -y ./rcm.rpm
