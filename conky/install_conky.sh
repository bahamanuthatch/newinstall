#!/bin/bash
# github.com/bahamanuthatch
# Bash script to make a new conky installation
# overwrites any existing configuration!

usr=$1
home=/home/$usr
dir=$home/scripts_nuthatch/newinstall

apt install -y conky-all

\cp $dir/conky/.conkyrc $home/.conkyrc

