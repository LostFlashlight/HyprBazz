#!/bin/sh
set -eu

firewall-offline-cmd --zone=public --add-port=1714-1764/tcp
firewall-offline-cmd --zone=public --add-port=1714-1764/udp
