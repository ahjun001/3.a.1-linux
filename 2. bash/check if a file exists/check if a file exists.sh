#!/usr/bin/env bash
# From: https://linuxize.com/post/bash-check-if-File-exists/

# old [     command, available on all POSIX shells

# new [[    command, supported on most modern ysstems using Bash, Zsh, Ksh

# -e    exists, includes dirs & devices
# -f    exists, only for Files

FILE=/etc/resolv.conf

if test -f "$FILE"; then
        echo File $FILE exists.    most readable option
fi


if [ -f "$FILE" ]; then
        echo File $FILE exists.    old form
fi


if [[ -f "$FILE" ]]; then
        echo File $FILE exists.    new form
fi


# using && operator, statement only executed if exit status of test command true

[[ -f "$FILE" ]] && echo "File $FILE exists.    using && operator"


# using && operator and a series of commands

[[ -f "$FILE" ]] && { echo "File $FILE exists.    using && { series of commands}"; cp "$FILE"  /tmp/; }

[[ -f "$FILE" ]] && {
        echo "File $FILE exists.    using && { series of  
                                commands  
                                on many lines  
}"
cp "$FILE"  /tmp/
}

FOO=/etc/foo
[[ -f "$FOO" ]] && echo "File $FOO exists." || echo "File $FOO does not exist"

# check if a Direcctory exist

if [[ -d "$FILE" ]]; then
        echo "directory $FILE doesn't exist"
else
        FILE=/tmp
        if [[ -d "$FILE" ]]; then
                echo "directory $FILE exists"
        fi
fi


# Check if File does not exist
[[ ! -f "$FOO" ]] && echo "File $FOO does not exist."


# Check if Multiple files exist: use -a or &&

if [[ -f /etc/resolv.conf && -f /etc/hosts ]]; then
    echo "Both files exist.     if statement"
fi

# [ -f /etc/resolv.conf -a -f /etc/hosts ] && echo "Both files exist.    -a style, does not work with [[ ]]"

[[ -f /etc/resolv.conf && -f /etc/hosts ]] && echo "Both files exist.    && style"
