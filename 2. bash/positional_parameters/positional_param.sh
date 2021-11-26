#!/usr/bin/env bash

echo "@0" = $0
echo "\$# = " $#
echo "The array of all params \$@ = " $@
echo "@1" = $1
echo "@2" = $2

# test with 
# positional_param.sh 'one'
# positional_param.sh 'one' 'two'
# positional_param.sh 
