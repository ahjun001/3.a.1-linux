#!/usr/bin/env bash

# https://www.thegeekdiary.com/how-to-configure-and-manage-network-connections-using-nmcli/
# https://www.golinuxcloud.com/nmcli-command-examples-cheatsheet-centos-rhel/
# https://www.edureka.co/community/66884/activation-of-network-connection-failed-in-linux

case $1 in
NOC)
    my_adapter_1=Optimized\ for\ VPN
    my_adapter_2=Automatic\ DNS
    my_device=enp1s0
    ;;
MSSB)
    my_adapter_1=Auto\ Linksys06800
    my_adapter_2="$my_adapter_1"
    my_device=wlp3s0
    ;;
*)
    echo "first command-line argument $1 not recognized, should be NOC or MSSB"
    echo 'activateNetwork.sh [NOC, MSSB] [1-6]'
    exit
    ;;
esac

set -x
case $2 in
i)
    inxi -n
    echo
    systemctl --type=service | grep -i network
    echo
    nmcli general status
    echo
    nmcli dev status
    echo
    nmcli con show
    echo
    echo 'check networking status'
    nmcli networking
    echo
    ;;
1)
    nmcli networking on
    ;;
2)
    sudo systemctl restart networking
    echo $?
    ;;
3)
    sudo systemctl restart NetworkManager
    echo $?
    ;;
4)
    nmcli connection up "$my_adapter_1"
    echo $?
    ;;
5)
    nmcli connection up "$my_adapter_2"
    echo $?
    ;;
6)
    sudo dhclient "$my_device"
    echo $?
    ;;
7)
    nmcli device connect "$my_device"
    echo $?
    ;;
8)
    sudo /etc/init.d/networking restart
    echo $?
    ;;
9)
    sudo apt install network-manager --reinstall
    echo $?
    ;;
*)
    echo 'activateNetwork.sh [NOC, MSSB] [1-6]'
    ;;
esac
set +x
