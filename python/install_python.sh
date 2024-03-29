#!/bin/bash
# github.com/bahamanuthatch
# Install the latest version of python in a virtual environment

usr=$1
ncore=$2

# python version
pyver=$3
if [[ "$pyver" =~ "3."[[:digit:]]{2}.* ]]; then
	nchar=4
else
	nchar=3
fi
pyshort=${pyver:0:$nchar}

# prepare
cd /opt

# download and install
wget "https://www.python.org/ftp/python/"$pyver"/Python-"$pyver".tar.xz"
tar xvf "Python-"$pyver".tar.xz"
rm "Python-"$pyver".tar.xz"
cd "Python-"$pyver
#./configure --enable-optimizations --prefix=/usr/local/stow/python$pyshort
./configure --prefix=/usr/local/stow/python$pyshort
make -j $ncore
make altinstall
cd /usr/local/stow/
stow python$pyshort
python$pyshort -m pip install --upgrade pip

# install virtualenv
pip$pyshort install virtualenv virtualenvwrapper
stow python$pyshort
sudo -u $usr mkdir /home/$usr/.virtualenvs
echo "# Virtualenv settings" >> /home/$usr/.bashrc
echo "WORKON_HOME=/home/$usr/.virtualenvs" >> /home/$usr/.bashrc
echo "VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python$pyshort" >> /home/$usr/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/$usr/.bashrc
source /home/$usr/.bashrc
