#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

usr=$1

wget 'wget https://downloads.nordcdn.com/apps/linux/install.sh'

chmod +x install.sh

./install.sh

usermod -aG nordvpn $usr

rm install.sh


