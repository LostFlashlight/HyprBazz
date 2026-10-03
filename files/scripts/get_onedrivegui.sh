#!/bin/bash

# Download the latest AppImage from the OneDriveGUI repository
wget https://github.com/bpozdena/OneDriveGUI/releases/latest/download/OneDriveGUI-x86_64.AppImage -O /var/usr/bin/onedriveGUI

# Make the AppImage executable
chmod +x /var/usr/bin/onedriveGUI

# Create a .desktop file to launch the AppImage
cat <<EOF > /var/home/simon/Volume/Code/HyprBazz/files/system/usr/share/applications/onedrivegui.desktop
[Desktop Entry]
Name=OneDriveGUI
Exec=/var/usr/bin/onedriveGUI
Icon=onedrive
Type=Application
Categories=Utility;
EOF
