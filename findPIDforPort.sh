#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh PORT $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) finds the process ID for the application that is LISTENING on a given port."
    exit 0
fi

PORT=$1
lsof -n -i4TCP:$PORT | grep LISTEN --color=auto
