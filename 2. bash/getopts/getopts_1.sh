#!/usr/bin/env bash

no_flag=true
flag=false
while getopts 'a:b:' opt; do
    # check -a arg
    # error if -a <no arg>
    # same with b
    case "$opt" in
    a) printf 'Got a: "%s"\n' "$OPTARG" ;;
    b) printf 'Got b: "%s"\n' "$OPTARG" ;;
    # *)
    #     echo 'flag or arg error' >&2
    #     # error message to stderr
    #     exit 1
    #     ;;
    esac
    no_flag="false"
done

# 'no flag' or 'default' situation
[ "$no_flag" = true ] && {
    echo 'no flag was passed: could be default configuration'
    exit 1
}

# try with
# $ getopts_1.sh -a 'case a with arg'
# $ getopts_1.sh -a  getopts will report an error then case *) will be executed
# $ getopts_1.sh -c  uses *) error m
# $ getopts_1.sh
