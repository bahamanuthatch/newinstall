#!/bin/bash
# github.com/bahamanuthatch
# Enter name of user as first argument
# Run as root

usr=$1

# creation
groupadd $usr
upwd=$(cat /root/.cred_remote)
useradd -u 1001 -g $usr -d /home/$usr -s /bin/bash -p $(echo $upwd | openssl passwd -1 stdin) -m $usr
usermod -aG sudo $usr
echo "# --- my parameters ---" >> /etc/sudoers
echo "$usr ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# security
apt install -y fail2ban ufw
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sed -i -e 's/#AuthorizedKeysFile/AuthorizedKeysFile/g' etc/ssh/sshd_config
sed -i -e 's/ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/g' etc/ssh/sshd_config
sed -i -e 's/PasswordAuthentication yes/PasswordAuthentication no/g' etc/ssh/sshd_config
sed -i -e 's/PermitRootLogin yes/PermitRootLogin prohibit-password/g' etc/ssh/sshd_config
echo "# --- my parameters ---" >> etc/ssh/sshd_config
echo "AuthenticationMethods publickey" >> etc/ssh/sshd_config
echo "PubkeyAuthentication yes" >> etc/ssh/sshd_config
systemctl restart sshd
ufw default deny incoming comment 'Deny all incoming traffic'
ufw allow "22/tcp" comment 'Allow SSH'
ufw allow 30303/tcp comment ''
ufw allow 30303/udp comment ''
ufw allow 9001/tcp comment ''
ufw allow 9001/udp comment ''
ufw enable
echo '[sshd]
enabled = true
banaction = ufw
port = 22
filter = sshd
logpath = %(sshd_log)s
maxretry = 5' >> /etc/fail2ban/jail.d/ssh.local
enable fail2ban
systemctl restart fail2ban

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
./main/install_update_remote2.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
./applications/install_rocketpool.sh $usr
chown -R $usr:$usr /home/$usr


