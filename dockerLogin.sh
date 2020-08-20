#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh ContainerID $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) logs into local docker instance for the provided Container ID."
    exit 0
fi

ContainerID=$1
shell=$2
if [[ -z $shell ]]; then
    shell=/bin/bash
fi
docker exec -it $ContainerID $shell
