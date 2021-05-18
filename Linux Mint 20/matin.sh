#!/usr/bin/env dash
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
set -x
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
sudo youtube-dl -U
set +x
