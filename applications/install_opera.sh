#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -

add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"

#apt update

#apt install -y opera-stable

