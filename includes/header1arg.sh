#/bin/bash
arg1=$2
fileName=`basename "$0"`

BCYAN="\033[1;36m" 
BRED="\033[1;31m"
URED="\033[4;31m"
CRESET="\033[0m"

if [[ -z  "$arg1" ]] ; then
    echo -e "${BCYAN}Usage:${CRESET} ${fileName} ${BRED}${1}${CRESET}"
    exit 1
fi;