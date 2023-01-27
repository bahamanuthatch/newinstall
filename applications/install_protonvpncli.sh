#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb

apt install -y ./protonvpn-stable-release_1.0.3_all.deb

rm protonvpn-stable-release_1.0.3_all.deb


