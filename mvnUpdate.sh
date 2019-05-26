#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) updates all versions of mvn dependencies with latest in mvn repositories."
    exit 0
fi
mvn versions:update-parent
mvn versions:use-latest-versions