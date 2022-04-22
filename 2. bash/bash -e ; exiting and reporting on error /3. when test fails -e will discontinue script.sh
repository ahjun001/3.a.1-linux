#!/usr/bin/env bash

# exiting on error
set -e

# exiting on error
if trigger_error; then echo "1. there was an error"; fi

# this test will not fail
[ -f "$0" ] && echo -e "1. $0 exists"

# this test will fail but set -e make script exit only if there is no alternative
# [ ! -f "$0" ]

# this will not exit
[ ! -f "$0" ] && echo "impossible that self does not exist"

# this test would fail so need to unset -e for script to continue
[ ! -f "$0" ] || echo "2. $0 exists"

echo -e "5. Exiting $0"
