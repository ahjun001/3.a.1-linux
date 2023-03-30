#!/usr/bin/env bash

echo $'\nRunning Tests\n'

while IFS= read -r -d '' testscript; do
    if output=$($testscript); then
        echo -e "\e[42m\e[30m PASS \e[0m $output"
    else
        echo -e "\e[41m\e[30m\e[1m FAIL \e[0m $output"
    fi
done < <(find ./suites -type f -print0)
