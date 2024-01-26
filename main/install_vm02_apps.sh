#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr/scripts_nuthatch/newinstall/applications
./install_brave.sh

apt update
apt dist-upgrade -y

apt install -y brave-browser
apt install -y geany
apt install -y featherpad


# last
./install_veracrypt.sh

