#!/usr/bin/env bash

set -e

echo -e "1. Entering ..."

## exiting on error
# (set +e && trigger_error_1) || set -e
# trigger_error_2

## but if error is in context of a test, then test must handle possible failure
# if trigger_error_3; then echo "pass"; else echo "failed"; fi

## so
# [ ! -f "$0" ] # if -e  will exit without message  if not then just exit

## and
# [ ! -f "$0" ] && echo "pass"                            # failure was not handled in test so will continue
# [ ! -f "$0" ] || (echo "has failed, exiting" && exit 1) # need to handle with exit

## similarly with if, test option must handle exit
# unset PJ_VAR
# if ! unset PJ_VAR; then echo "imposible"; else echo "unset always returns 0"; fi

## recap: all these will interrupt script with -e
# trigger_error_4
# [ ! -f "$0" ]  # exit with no message, exit code=1
# ls stranger
# echo yes > tmp.txt && grep no tmp.txt # exit with no message, exit code=1

# housekeeping
[ -f tmp.txt ] && rm tmp.txt

echo "n. Exiting ..."
