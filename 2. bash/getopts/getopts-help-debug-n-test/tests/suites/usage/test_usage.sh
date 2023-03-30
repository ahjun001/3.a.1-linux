#!/usr/bin/env bash

echo -n 'Testing usage'

# exit 0
../getopts-help-debug-n-test.sh -h >/dev/null || exit 1
var=$(../getopts-help-debug-n-test.sh -h) && [[ ${var:0:6} == $'Usage:' ]] || exit 1

# exit 1
../getopts-help-debug-n-test.sh -x >/dev/null && exit 1
[[ $(../getopts-help-debug-n-test.sh -x) == 'flag is not managed' ]] || exit 1

../getopts-help-debug-n-test.sh >/dev/null && exit 1
[[ $(../getopts-help-debug-n-test.sh) == 'No flags were passed' ]] || exit 1


exit 0
