#/bin/bash
arg1=$3
arg2=$4
fileName=`basename "$0"`

BCYAN="\033[1;36m" 
BRED="\033[1;31m"
URED="\033[4;31m"
CRESET="\033[0m"

if [ -z  "$arg1" ] || [ -z "$arg2" ] ; then
    echo -e "${BCYAN}Usage:${CRESET} ${fileName} ${BRED}${1}${CRESET} ${BRED}${2}${CRESET}"
    exit 1
fi;