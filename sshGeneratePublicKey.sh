#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh EMAIL $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) is a shortcut for generating ssh keys."
    exit 0
fi


EMAIL=$1
ssh-keygen -t rsa -b 4096 -C "${EMAIL}"
