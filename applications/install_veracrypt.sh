#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo
# Run last, and print out verification

wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb

wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb.sig

wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-sha512sum.txt

wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-sha512sum.txt.sig

wget https://www.idrix.fr/VeraCrypt/VeraCrypt_PGP_public_key.asc

python3 verify_veracrypt.py

rm veracrypt*deb*
rm veracrypt*txt*
rm VeraCrypt*asc

