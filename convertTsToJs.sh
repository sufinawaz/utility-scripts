#!/bin/bash
srcDir=$1
BCYAN="\033[1;36m" 
BRED="\033[1;31m"
CRESET="\033[0m"

if [[ "$1" == "-h" ]] || [[ -z  "$srcDir" ]] ; then
    echo -e "${BCYAN}Usage:${CRESET} $(basename $0) ${BRED}srcDir${CRESET}"
    exit 1
fi;
for dir in `find $srcDir -type d`; do 
    # tsc --jsx preserve --declaration --allowSyntheticDefaultImports --target es2019 --moduleResolution node --resolveJsonModule $dir/*.tsx
    # tsc --jsx preserve --declaration --allowSyntheticDefaultImports --target es2019 --moduleResolution node --resolveJsonModule $dir/*.ts
    cd $dir
    files=`ls | egrep '.*(^.?|\.[^d]|[^.]d|[^.][^d])\.(ts|tsx)$'`
    echo converting $files ...
    tsc --jsx preserve --declaration --allowSyntheticDefaultImports --target es2019 --moduleResolution node --resolveJsonModule $files
done