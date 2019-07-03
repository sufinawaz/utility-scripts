#!/bin/bash
if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) recursively removes all *.orig files produced by a git merge."
    exit 0
fi
## this should not be necessary if you run the following command:
## git config --global mergetool.keepBackup false
## but here we are
find . -name "*.orig" -delete
