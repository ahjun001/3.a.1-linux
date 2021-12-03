#!/bin/bash

# https://www.baeldung.com/linux/bash-parse-command-line-arguments

# 3. Error reporting in getopts

if ! VALID_ARGS=$(getopt -o abg:d: --long alpha,beta,gamma:,delta: -- "$@"); then
    exit 1
fi

eval set -- "$VALID_ARGS"
while 'true'; do
    case "$1" in
    -a | --alpha)
        echo "Processing 'alpha' option"
        shift
        ;;
    -b | --beta)
        echo "Processing 'beta' option"
        shift
        ;;
    -g | --gamma)
        echo "Processing 'gamma' option. Input argument is '$2'"
        shift 2
        ;;
    -d | --delta)
        echo "Processing 'delta' option. Input argument is '$2'"
        shift 2
        ;;
    --)
        shift
        break
        ;;
    esac
done
