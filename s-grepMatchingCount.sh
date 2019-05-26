#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header1arg.sh "searchTerm [extraArgs for grep]" $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) counts and lists all occurences of a given string in current directory. Accepts additional opts for grep."
    exit 0
fi

searchTerm=$1
extraArgs=$2
grep $1 -c $2 * | tr ':' ' ' | awk '{ print $2 "\t" $1}' | grep -v "^0\s" | sort -nr