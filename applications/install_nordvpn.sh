#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

wget 'https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb'

apt install -y ./nordvpn-release_1.0.0_all.deb

rm nordvpn-release_1.0.0_all.deb

