#!/bin/bash

# https://www.baeldung.com/linux/bash-parse-command-line-arguments

# 2.3. Error reporting in getopts

usage() {
    echo "Usage: $(basename "$0") [-a] [-b] [-c arg]"
}

while getopts :abc:h opt; do
    case "$opt" in
    a)
        echo "Processing option 'a'"
        ;;

    b)
        echo "Processing option 'b'"
        ;;

    c)
        arg="$OPTARG"
        echo "Processing option 'c' with '${arg}' argument"
        ;;

    h)
        usage
        exit 0
        ;;

    :)
        echo -e "option requires an argument."
        usage
        exit 1
        ;;

    ?)
        echo -e "Invalid command option."
        usage
        exit 1
        ;;
    esac
done

