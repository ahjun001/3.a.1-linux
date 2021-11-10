#!/usr/bin/env bash

clear
set -x
expressvpn status
echo; echo; echo
,width_reduce.sh &
echo; echo; echo
sudo apt update -y && sudo apt upgrade -y
# sudo apt autoremove -y
# sudo systemctl restart NetworkManager
echo; echo; echo
sudo yt-dlp -U
set +x
