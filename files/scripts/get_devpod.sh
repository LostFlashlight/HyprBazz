#!/usr/bin/env bash
# devpod devenv installer
url -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64"
install -c -m 0755 devpod /usr/local/bin
devpod
