#!/usr/bin/env bash

set -euo pipefail

# set dirs
my_env=dev
# my_env=expl
case $my_env in
dev)
    from_dir=/tmp/move_pics/DCIM/Camera
    to_dir=/tmp/move_pics/6.My_pics_n_vids
    rm -rf $from_dir $to_dir
    mkdir -pv  $from_dir $to_dir
    touch $from_dir/IMG_20221112_075010.jpg
    touch $from_dir/IMG_20221112_075011.jpg
    touch $from_dir/IMG_20221112_075012.jpg
    touch $from_dir/IMG_20221113_075010.jpg
    touch $from_dir/IMG_20221113_075011.jpg
    touch $from_dir/IMG_20221113_075012.jpg
    touch $from_dir/IMG_20221114_075010.jpg
    touch $from_dir/IMG_20221114_075011.jpg
    touch $from_dir/IMG_20221114_075012.jpg
    touch $from_dir/VID_20231112_170628.mp4
    touch $from_dir/VID_20231113_170628.mp4
    touch $from_dir/VID_20231114_170628.mp4
    touch $from_dir/1680410192618_123342.jpg
    touch $from_dir/hIMG_20220702_132341.jpg
    ;;
expl)
    from_dir='/run/user/1000/gvfs/mtp:host=Xiaomi_Redmi_Note_9_Pro_9ccdd788/Internal shared storage/DCIM/Camera'
    to_dir=/media/perubu/Toshiba_4T/Documents/6.My_pics_n_vids
    ;;
*)
    echo my_env = "${my_env}" should not happen && exit
    ;;
esac


# check dirs
[[ -d $from_dir ]] || (echo "$from_dir" does not exists, exiting && exit 1)
[[ -d $to_dir ]] || (echo "$to_dir" does not exists, exiting && exit 1)