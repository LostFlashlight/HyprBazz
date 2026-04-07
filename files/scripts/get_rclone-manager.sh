#!/usr/bin/env bash


URL="$(curl -sL https://github.com/Zarestia-Dev/rclone-manager/releases/latest/download/latest.json | jq '.platforms."linux-x86_64-rpm".url' -r)"
curl $URL -Lo rcm.rpm
dnf install -y ./rcm.rpm
