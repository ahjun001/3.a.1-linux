#!/usr/bin/env bash

no_arg=true
while getopts ':a:b:' opt; do
    case "$opt" in
    a) printf 'Got a: "%s"\n' "$OPTARG" ;;
    b) printf 'Got b: "%s"\n' "$OPTARG" ;;
    :)
        echo 'missing argument!' >&2
        exit 1
        ;;
    \?)
        echo 'invalid option!' >&2
        exit 1
        ;;
    *)
        echo 'probably will never be used' >&2
        exit 1
        ;;
    esac
    no_arg=false
done
[[ "$no_arg" = true ]] && echo 'No arg passed'

# $ bash script.sh -a 'aaa'   executes correctly
# $ bash script.sh -a         missing argument
# $ bash script.sh -c         invalid option
