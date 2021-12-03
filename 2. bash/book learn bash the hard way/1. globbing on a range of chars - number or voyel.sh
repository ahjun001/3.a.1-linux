#!/usr/bin/env bash

testDir=/tmp/test
rm -rf ${testDir}
mkdir -p ${testDir}

# creating files
for i in {2..6}; do touch ${testDir}/t_"${i}".txt; done
for c in {h..p}; do touch ${testDir}/t_"${c}".txt; done

# show all created
ls -1 ${testDir}
echo

# globbing so that only a few are listed
ls -1 ${testDir}/t_[i-k3-5].txt
