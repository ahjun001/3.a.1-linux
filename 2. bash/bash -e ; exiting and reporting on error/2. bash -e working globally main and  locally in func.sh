#!/usr/bin/env bash

# -e to exit immediately on error, even if grep does not find result!
# -x to echo commands
# set -ex

# https://linuxhint.com/bash-set-e/#:~:text=Set%20%E2%80%93e%20is%20used%20within,having%20a%20non%2Dzero%20status.
# Example 1

function my_func() {
    # set -e
    echo "3 entered my_func()"
    trigger_error_inside_func
    echo "4 there was an error in my_func()"
}
echo "1 starting the script"
trigger_error_at_root
echo "2 there was an error at root level"
my_func
echo "5 Exiting $0 ..."
