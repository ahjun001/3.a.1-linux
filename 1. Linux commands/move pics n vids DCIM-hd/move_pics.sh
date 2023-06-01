#!/usr/bin/env bash

set -euo pipefail
set -x
# shellcheck source=/dev/null
source ./set_envt.sh

# move files
i=0
for full_file in "${from_dir:?}"/*; do
    echo full_file = "$full_file"
    if [[ -f $full_file ]]; then
        file=$(basename -- "$full_file")
        # extension="${file##*.}"
        file="${file%.*}"
        y="${file:4:4}"
        m="${file:8:2}"
        d="${file:10:2}"

        day_dir=$y-$m-$d
        # create day dir if does not exist
        if ! [[ -d $day_dir ]]; then mkdir -p "${to_dir:?}"/"$day_dir"; fi
        # move file
        rsync -auvP --remove-source-files "$full_file" "$to_dir"/"$day_dir"/
    fi
    ((i++)) || :
    ((i >= 3)) && break
done

nemo "$from_dir" "$to_dir"
