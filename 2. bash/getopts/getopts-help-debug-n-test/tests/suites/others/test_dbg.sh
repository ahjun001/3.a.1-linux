#!/usr/bin/env bash

echo -n 'Testing debugging'

# Exit 0
../getopts-help-debug-n-test.sh -d >/dev/null || exit 1
var=$(../getopts-help-debug-n-test.sh -d) && [[ ${var:0:24} == $'flag d\nTesting debugging' ]] || exit 1

exit 0
