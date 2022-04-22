#!/usr/bin/env bash

# toggle set -e
set -e

echo -e "1. starting, sourcing my_lib.sh"
[ ! -f "$0" ] || echo "$0: test failed"
# shellcheck source=/dev/null
. "./2. bash/bash -e ; exiting and reporting on error /4.b my_lib.sh"
echo "2. root: my_lib.sh was sourced"

echo "3. calling my_func"
my_func
echo "4. my_func was called"

echo "5. Exiting with many errors"
