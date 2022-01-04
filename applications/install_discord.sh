#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

apt install -y ./discord.deb

rm discord.deb

