#!/usr/bin/env bash

# no -e defined

my_func() {
    echo -e "entering my_func()"
    # if error is triggered because a function was not defined, then script will exit when the lib is first read
    # trigger_error
    # if it is in a test, then will exit on execution
    #    the following test will always fail
    [ ! -f "$0" ] || echo "test has failed"
    echo -e "exiting my_func()\n"
}
echo -e "entering my_lib.h\n"
my_func
echo -e "exiting my_lib.h\n"
