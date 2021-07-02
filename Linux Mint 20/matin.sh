#!/usr/bin/env dash
echo
echo
echo
set -x
expressvpn status
echo
echo
echo
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
echo
echo
echo
sudo youtube-dl -U
sudo systemctl restart NetworkManager
set +x
