#!/usr/bin/env bash
# clipvault clipbourd history installer

wget https://github.com/Rolv-Apneseth/clipvault/releases/latest/download/clipvault-x86_64-unknown-linux-gnu.tar.gz
tar -xf clipvault-x86_64-unknown-linux-gnu.tar.gz
cp clipvault /usr/bin/
chmod a+x /usr/bin/clipvault
