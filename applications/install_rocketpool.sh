#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

usr=$1

mkdir -p /home/$usr/bin
wget https://github.com/rocket-pool/smartnode-install/releases/latest/download/rocketpool-cli-linux-amd64 -O /home/$usr/bin/rocketpool
chmod +x /home/$usr/bin/rocketpool
su -c '/home/$usr/bin/rocketpool service install' $usr

