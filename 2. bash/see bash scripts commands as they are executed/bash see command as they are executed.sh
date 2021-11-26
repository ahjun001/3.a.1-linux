#!/usr/bin/env bash

set -x
ls -al    # need a command to identify the command when run with $ bash -v

ls     # need a space to separate commands from previous results

ls     #
set +x

# comments lines are not printed
# with bash -x
ls -al
