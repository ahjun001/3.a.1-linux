#!/usr/bin/env dash

clear
set -x
expressvpn status
echo; echo; echo
sudo apt update -y && sudo apt upgrade -y
# sudo apt autoremove -y
echo; echo; echo
sudo yt-dlp -U
# echo; echo; echo
# sudo systemctl restart NetworkManager
set +x
