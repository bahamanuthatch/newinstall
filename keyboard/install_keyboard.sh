#!/bin/bash
# github.com/bahamanuthatch
# Make keyboard changes
# overwrites any existing configuration!

usr=$1
home=/home/$usr

\cp $home/scripts_nuthatch/newinstall/keyboard/.Xmodmap $home/.Xmodmap
xmodmap $home/.Xmodmap

