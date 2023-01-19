#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run as follows: sudo ./install.sh myusername mypythonversion

usr=$1
pyver=$2

# installation
cd /home/$usr
mkdir scripts
mkdir scripts_nuthatch
cd scripts_nuthatch
apt update
apt install git -y
git clone https://github.com/bahamanuthatch/newinstall.git
cd newinstall
chmod +x -R main
./main/install_update.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
#./keyboard/install_keyboard.sh
./python/install_python.sh $usr 2 $pyver

# other directories


# software
cd /home/$usr/scripts_nuthatch/newinstall
./main/install_vm_apps.sh $usr

