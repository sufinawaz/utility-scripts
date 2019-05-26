#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh "package e.g. biz.neustar.ms:mip-db-schema" "$@"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) maps out a mvn dependency tree for a given package."
    exit 0
fi


mvn dependency:tree -Dverbose -Dincludes=$1