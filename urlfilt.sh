#!/bin/bash

# Check if a file is provided as an argument
if [ $# -eq 1 ]; then
    # Read from the file
    cat "$1"
else
    # Read from standard input
    cat
fi | grep -Eo '(http|https)://[a-zA-Z0-9./?=_-]*'
