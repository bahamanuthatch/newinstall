#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created
# move first to ~/scripts_nuthatch/newinstall
# Run as follows: sudo ./install.sh myusername mypythonversion

usr=$1
pyver=$2

# installation
./main/install_update.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
./python/install_python.sh $usr 2 $pyver

# other directories


# software
cd /home/$usr/scripts_nuthatch/newinstall
./main/install_apps.sh $usr
