#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) is a shortcut for a disk usage script that lists directories and files in order of descending human readable size."
    exit 0
fi

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "${RED}Checking for directory space usage...${NC}\n"
# du -hd 1  | gsort -hr
du -sh * | gsort -hr
