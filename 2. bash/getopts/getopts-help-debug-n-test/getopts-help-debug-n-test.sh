#!/usr/bin/env bash

set -euo pipefail

PGM=${0##*/}
DBG=:
NOFLAGS=''

Usage() {
    cat <<.
Usage: $PGM [-d] [-h] [Arg1|...]
    -d debugging
    -h help
.
}
while getopts :dh F; do
    case $F in
    d) DBG='echo' && echo 'flag d' && $DBG 'Testing debugging messages' ;;
    h) Usage && exit 0 ;;
    *) echo 'flag is not managed' && exit 1 ;;
    esac
    NOFLAGS=1
done
[[ -z $NOFLAGS ]] && { echo 'No flags were passed'; exit 1; }
exit 0
