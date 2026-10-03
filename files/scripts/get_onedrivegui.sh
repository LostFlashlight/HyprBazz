#!/bin/bash

# Fetch the latest release information from the GitHub API
LATEST_RELEASE=$(curl -s https://api.github.com/repos/bpozdena/OneDriveGUI/releases/latest)

# Extract the download URL for the AppImage
DOWNLOAD_URL=$(echo "$LATEST_RELEASE" | grep "browser_download_url.*AppImage" | cut -d ":" -f 2,3 | tr -d "" | head -n 1)

# Download the latest AppImage from the OneDriveGUI repository
wget $DOWNLOAD_URL -O /var/usr/bin/onedriveGUI

# Make the AppImage executable
chmod +x /var/usr/bin/onedriveGUI

# Create a .desktop file to launch the AppImage
cat <<EOF > /var/usr/share/applications/onedrivegui.desktop
[Desktop Entry]
Name=OneDriveGUI
Exec=/var/usr/bin/onedriveGUI
Icon=onedrive
Type=Application
Categories=Utility;
EOF
