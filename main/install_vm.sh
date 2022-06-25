#!/bin/bash
# github.com/bahamanuthatch
# For local install, user is already created 
# Run as follows: sudo ./install.sh myusername

usr=$1

# installation
cd /home/$usr
mkdir scripts
mkdir scripts_nuthatch
cd scripts_nuthatch
apt update
apt install git -y
git clone https://github.com/bahamanuthatch/newinstall.git
cd newinstall
./main/install_update.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
./keyboard/install_keyboard.sh
./python/install_python.sh $usr 2

# other directories


# software
cd /home/$usr/scripts_nuthatch/newinstall
./main/install_vm_apps.sh $usr
