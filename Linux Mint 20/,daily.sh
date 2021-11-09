#!/usr/bin/env bash

clear
set -x
expressvpn status
sudo yt-dlp -U &
echo; echo; echo
,width_reduce.sh &
echo; echo; echo
sudo apt update -y && sudo apt upgrade -y
# sudo apt autoremove -y
# sudo systemctl restart NetworkManager
echo; echo; echo
set +x
