#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr/scripts_nuthatch/newinstall/applications
./install_brave.sh
./install_discord.sh
./install_signal.sh
./install_chrome.sh
./install_chromium.sh
./install_protonvpncli.sh
./install_calibre.sh

apt update
apt dist-upgrade -y

apt install -y brave-browser
apt install -y signal-desktop
apt install -y protonvpn-cli
apt install -y featherpad
snap install slack --classic

# last
./install_veracrypt.sh


