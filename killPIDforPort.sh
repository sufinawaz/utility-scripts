#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh PORT "$@"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) finds and kills processes that is LISTENING on a given port."
    exit 0
fi

PID=`$SCRIPTS_DIR/findPIDforPort.sh $1 | awk '{print $2}'`
if [[ -z  "$PID" ]] ; then
    echo -e "${BRED}No Process is currently using port ${1}${CRESET}"
    exit 1
fi;

kill $PID && echo -e "Killed Process(${URED}${PID}${CRESET})"
