#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) tails the latest changed file in current directory."
    exit 0
fi

ls -rth | tail -1