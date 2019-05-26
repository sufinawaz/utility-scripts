#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh FILE_PATH "$@"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) resets a specific file to current HEAD."
    exit 0
fi

filePath=$1
git reset HEAD $filePath && git checkout -- $filePath
