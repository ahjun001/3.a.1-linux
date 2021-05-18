#!/usr/bin/env zsh

# based on https://stackoverflow.com/questions/32938073/how-do-i-get-the-filename-not-the-invoking-command-in-a-zsh-script

mypathA=$0:A    # Turn a file name into an absolute path
mypatha=$0:a    # As  `a',  but also resolve use of symbolic links where possible.
invoker=$0
echo $mypathA
echo $mypatha
echo $invoker