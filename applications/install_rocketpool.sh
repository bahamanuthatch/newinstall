#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

usr=$1
app=/home/$usr/bin/rocketpool

mkdir -p /home/$usr/bin
wget https://github.com/rocket-pool/smartnode-install/releases/latest/download/rocketpool-cli-linux-amd64 -O $app
chmod +x $app
echo y|su -c "$app service install" $usr

