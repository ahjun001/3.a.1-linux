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
# link to Github vimrc
ln -fs '/home/perubu/Documents/'"${GitHubDir}"'/1.4-learning-vim/vimrc' '/home/perubu/.vim/'

# link to Github .zshrc
ln -fs '/home/perubu/Documents/'"${GitHubDir}"'/3.a.1-linux/3. zsh/.zshrc' '/home/perubu/'

# link to all Github bash scripts whose filename starts with ,
find /home/perubu/Documents/GitHub_NOC/3.a.1-linux/Linux\ Mint\ 20/ -type f -name ',*.sh' -exec sudo ln -fs {} /usr/local/sbin/ \;
# where the literal {} gets substituted by the filename and the literal \; is needed for find to know that the custom command ends there.

# link to VSCode snippets
find /home/perubu/Documents/GitHub_NOC/3.a.2-vsCode/config/Code/User/snippets/ -type f -name ',*.json' -exec sudo ln -fs {} /home/perubu/.config/Code/User/snippets/ \;
set +x
