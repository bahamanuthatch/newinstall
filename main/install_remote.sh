#!/bin/bash
# github.com/bahamanuthatch
# Enter name of user as first argument
# Enter python version as second argument
# Run as root

usr=$1
pyver=$2

# creation
groupadd $usr
upwd=$(cat /root/.cred_remote)
useradd -u 1001 -g $usr -d /home/$usr -s /bin/bash -p $(echo $upwd | openssl passwd -1 stdin) -m $usr
usermod -aG sudo $usr
echo "# --- my parameters ---" >> /etc/sudoers
echo "$usr ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# security
apt install -y fail2ban ufw
systemctl start fail2ban
systemctl enable fail2ban
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
echo "# --- my parameters ---" >> etc/ssh/sshd_config
echo "AuthenticationMethods publickey" >> etc/ssh/sshd_config
echo "PubkeyAuthentication yes" >> etc/ssh/sshd_config
systemctl restart sshd

# installation
cd /home/$usr
mkdir scripts
mkdir scripts_nuthatch
cd scripts_nuthatch
apt update
apt install git -y
git clone https://github.com/bahamanuthatch/newinstall.git
chown -R $usr:$usr /home/$usr
cd newinstall
./main/install_update.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
./keyboard/install_keyboard.sh $usr
#./python/install_python.sh $usr 1 $pyver

# other directories
cd /home/$usr/scripts
mkdir python
mkdir data
mkdir files
chown -R $usr:$usr /home/$usr


