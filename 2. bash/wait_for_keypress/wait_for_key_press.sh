#!/usr/bin/env bash
# from https://linuxhint.com/bash_wait_keypress/

# using read command to take user input in a bash script
# or wait for specific time
# key can any or be specific

case $1 in
1)
    # 1 wait for any key, message every 3 sec
    echo "Press any key to continue"
    while [ true ]; do
        read -t 3 -n 1      # wait for 3 sec, read 1 key
        if [ $? = 0 ]; then # if read successful (any key entered), then $? = 0
            exit
        else
            echo "waiting for the keypress"
        fi
    done
    ;;

2)
    # 2 wait for q being entered, if other key, will increment a counter
    echo "Press 'q' to exit"
    count=0
    while :; do
        read -n 1 k <&1
        if [[ $k = q ]]; then
            printf "\nQuitting from the program\n"
            break
        else
            ((count = $count + 1))
            printf "\nIterate for $count times\n"
            echo "Press 'q' to exit"
        fi
    done
    ;;

*)
    echo "Usage: ./bash_wait_for_key_press.sh [1-3]"
    ;;
esac
