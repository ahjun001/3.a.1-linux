#!/usr/bin/env bash

set +x
for index in {6..6}; do
    dd_index="$(printf '%02d' "$index")"
    in_mp4=Le\ Bureau\ Des\ Legendes\ S04E"$dd_index".mp4
    out_mp4=BdL_S04E"$dd_index"_zh_subs.mp4
    fr_srt="$dd_index"_FR.srt
    zh_srt="$dd_index"_ZH.srt

    ffmpeg -i "$in_mp4" -map s:3 "$fr_srt"
    /usr/bin/brave-browser-stable https://translatesubtitles.co/index.php
    pid=" $!"
    wait $pid || {
        echo "there were errors" >$2
        exit 1
    }

    if [[ -e "$zh_srt" ]]; then
        ffmpeg -hide_banner -loglevel error \
            -i "$in_mp4" -i "$zh_srt" \
            -map 0:v -map 0:a -map 0:s:0 -map 0:s:1 -map 0:s:2 -map 0:s:3 \
            -map 1:s:0 \
            -c:v copy -c:a copy \
            -c:s mov_text \
            -metadata:s:s:4 language=chi \
            $out_mp4
    else
        echo 'file "$zh_srt" not present'
    fi

    mpv $out_mp4 --sid=4 --secondary-sid=5 --sub-color=#fff000
done
set -x
