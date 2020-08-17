#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) cleans up all local branches that are in sync with master and removes any remote-tracking references that no longer exist on the remote."
    exit 0
fi
git fetch
branches=`git branch --merged=master | grep -v master | grep -v '*'`

if [[ -z  "$branches" ]] ; then
    echo "No local branches to delete"
else
    git branch -d $branches;
fi
git fetch --prune