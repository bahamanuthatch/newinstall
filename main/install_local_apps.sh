#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr/scripts_nuthatch/newinstall/applications
./install_brave.sh
./install_kloak.sh
./install_mullvadbrowser.sh

apt update -y
apt dist-upgrade -y

apt install -y brave-browser
apt install --no-install-recommends kloak
apt install mullvad-browser

apt install -y featherpad
apt install -y lm-sensors
sensors-detect --auto

./install_veracrypt.sh
#./install_veracrypt_debian.sh



