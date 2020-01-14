#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) shows the latest updated file in directory."
    exit 0
fi

ls -rth | tail -1