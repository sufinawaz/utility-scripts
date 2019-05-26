#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) fetches from and rebases with origin/master branch."
    exit 0
fi

git fetch && git rebase -i origin/master
