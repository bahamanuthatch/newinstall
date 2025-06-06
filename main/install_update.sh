#!/bin/bash
# github.com/bahamanuthatch
# Update and install essential packages

apt update
apt dist-upgrade -y
apt autoremove -y

apt install -y build-essential
apt install -y checkinstall
apt install -y liblzma-dev
apt install -y libreadline-gplv2-dev
apt install -y libncursesw5-dev
apt install -y libssl-dev
apt install -y libsqlite3-dev
apt install -y tk-dev
apt install -y libgdbm-dev
apt install -y libc6-dev
apt install -y libbz2-dev
apt install -y zlib1g-dev
apt install -y openssl
apt install -y libffi-dev
apt install -y python3-dev
apt install -y python3-setuptools
apt install -y wget
apt install -y stow
apt install -y poppler-utils
apt install -y libpoppler-cpp-dev
apt install -y tesseract-ocr
apt install -y gfortran libopenblas-dev liblapack-dev
apt install -y curl
apt install -y links
apt instlal -y expect
apt install -y unzip
#apt install -y chromium-chromedriver
apt install -y cpu
apt install -y vnstat
apt install -y ncdu
apt install -y gnupg
apt install -y gnupg2
apt install -y apt-transport-https
apt install -y net-tools
apt install -y htop
apt install -y openvpn
apt install -y git

