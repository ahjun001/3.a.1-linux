#!/usr/bin/env bash

# -e to exit on error
# -u to exit on unset variables
# -x to echo commands for degub purposes
[[ -n ${MY_ENV+foo} ]] || MY_ENV=eu
set -$MY_ENV

# set dirs
my_env=dev
case $my_env in
dev)
    from_dir=./from_dir
    to_dir=./to_dir
    ;;
expl)
    from_dir=mnt:/
    to_dir=/home/perubu/Desktop/my_redmi
    ;;
*)
    echo should not happen && exit
    ;;
esac

# check dirs
[[ -d $from_dir ]] || (echo $from_dir does not exists, exiting && exit 1)
[[ -d $to_dir ]] || (echo $to_dir does not exists, exiting && exit 1)

# move files
for full_file in "$from_dir"/*; do
    if [[ -f $full_file ]]; then
        file=$(basename -- "$full_file")
        # extension="${file##*.}"
        file="${file%.*}"
        y="${file:4:-11}"
        m="${file:8:-9}"
        d="${file:10:-7}"

        day_dir=$y-$m-$d
        # create day dir if does not exist
        if ! [[ -d $day_dir ]]; then mkdir -p $to_dir/"$day_dir"; fi
        # move file
        mv -v "$full_file" $to_dir/"$day_dir"/
    fi
done

echo "exited $0 with code=$?"
