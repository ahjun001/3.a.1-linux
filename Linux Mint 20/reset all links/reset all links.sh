#!/usr/bin/env bash

# set target computer: NOC(default) or MSSB
usage() {
    echo "Usage: $0 ['NOC' or 'MSSB']"
    echo "if no arg is passed, default is NOC"
    exit 1
}

GitHubDir='GitHub_NOC'
[ $# = 1 ] && case $1 in
'MSSB') GitHubDir='GitHub_MSSB' ;;
'NOC') GitHubDir='GitHub_NOC' ;;
*) usage ;;
esac

echo "\$GitHubDir = " $GitHubDir
# test with
# $ reset/ all/ links.sh
# $ reset/ all/ links.sh NOC
# $ reset/ all/ links.sh MSSB
# $ reset/ all/ links.sh Others

set -x
ln -fs '/home/perubu/Documents/'"${GitHubDir}"'/cheat-sheet_vim/vimrc' '/home/perubu/.vim/'
set +x