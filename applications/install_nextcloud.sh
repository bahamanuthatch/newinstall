#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

usr=$1

mkdir /home/$usr/applications

wget https://github.com/nextcloud/desktop/releases/download/v3.0.3/Nextcloud-3.0.3-x86_64.AppImage

chown $usr:$usr Nextcloud-3.0.3-x86_64.AppImage

mv Nextcloud-3.0.3-x86_64.AppImage /home/$usr/applications

