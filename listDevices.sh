#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) lists all USB devices currently connected."
    exit 0
fi

ioreg -p IOUSB -l -w 0
