#!/bin/bash
if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) recursively removes all *.orig files produced by a git merge"
    exit 0
fi
find . -name "*.orig" | xargs rm