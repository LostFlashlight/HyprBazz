#!/bin/bash

DOWNLOAD_URL=$(curl -fsSL https://api.github.com/repos/bpozdena/OneDriveGUI/releases/latest |
jq -r '.assets[] | select(.name | endswith(".AppImage")) | .browser_download_url' | head -n 1)

wget -q "$DOWNLOAD_URL" -O /usr/bin/onedriveGUI
chmod +x /usr/bin/onedriveGUI

# Create a .desktop file to launch the AppImage
cat <<EOF > /usr/share/applications/onedrivegui.desktop
[Desktop Entry]
Name=OneDriveGUI
Exec=/var/usr/bin/onedriveGUI
Icon=onedrive
Type=Application
Categories=Utility;
EOF
