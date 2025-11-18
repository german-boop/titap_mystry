#!/bin/bash

# Project test script for Git bisect
# If index.html contains the text "ERROR" → bad commit
# Otherwise → good commit

# Check if index.html exists
if [ -f index.html ]; then
    # Search for "ERROR" in index.html
    if grep -q "ERROR" index.html; then
        echo "Bad commit: ERROR found!"
        exit 1   # bad
    else
        echo "Good commit"
        exit 0   # good
    fi
else
    echo "index.html not found, assuming good commit"
    exit 0
fi

