#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr/scripts_nuthatch/newinstall/applications
./install_brave.sh
./install_chrome.sh
./install_chromium.sh
./install_protonvpncli.sh
#./install_nordvpn.sh $usr

apt update
apt dist-upgrade -y

apt install -y brave-browser
apt install -y protonvpn-cli
apt install -y geany
apt install -y featherpad

#apt remove --purge -y libreoffice*
#apt install -y gnumeric

# last
./install_veracrypt.sh

