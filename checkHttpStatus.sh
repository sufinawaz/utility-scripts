#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh URL "$@"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) displays the HTTP status for a given url."
    exit 0
fi

url=$1
curl -IsXGET $url | head  -1
