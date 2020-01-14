#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header2arg.sh newBranch origin $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) create a new remote branch and push to provided origin."
    exit 0
fi

newBranch=$1
origin=$2

git checkout -b $newBranch
if [[ -z  "$origin" ]] ; then
   git push -u $origin $newBranch
fi
