#!/usr/bin/env bash

testDir=/tmp/test
rm -rf ${testDir}
mkdir -p ${testDir}
testFile=${testDir}/test.txt

# create some file that will be renamed
voyels=("a" "e" "i" "o" "u")
i=1
for voyel in ${voyels[@]}; do
    touch ${testDir}/f${voyel}le${i}.txt
    touch ${testDir}/f${voyel}le${i}.doc
    i=$((i + 1))
done

rename -n 's/f(.)le(.)/$2_$1/' ${testDir}/*.doc
# n  for no = dry run