#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) kills and removes all docker containers."
    exit 0
fi

for i in `docker ps -a --format {{.ID}}`; do docker kill $i 2>/dev/null; done 
for i in `docker ps -a --format {{.ID}}`; do docker rm $i; done
