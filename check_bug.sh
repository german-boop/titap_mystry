#!/bin/bash

# Check all .txt files for "ERROR"
BAD=0
for file in *.txt; do
    if grep -q "ERROR" "$file"; then
        echo "Bad commit found in $file"
        BAD=1
    fi
done

if [ $BAD -eq 1 ]; then
    exit 1   # bad
else
    echo "Good commit"
    exit 0   # good
fi

