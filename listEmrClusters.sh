
#!/bin/bash

SCRIPTS_DIR="$(dirname "$0")"
BCYAN="\033[1;36m" 
BRED="\033[1;31m"
URED="\033[4;31m"
CRESET="\033[0m"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [[ -z $1 ]]; then
    echo "Find EMR clusters with specified prefix [startDate,state]"
    echo -e "${BCYAN}Usage:${CRESET} $(basename $0) ${BRED}prefix${CRESET} ${BCYAN}[state] [startDate]${CRESET}"
    exit 0
fi

Prefix=$1
state=$2
startDate=$3


if [[ -z $state ]]; then
    state=WAITING
fi

if [[ -z $startDate ]]; then
    startDate=$(date -v-3d '+%Y-%m-%d')
fi

aws emr list-clusters \
    --cluster-states $state \
    --query "Clusters[?starts_with(Name, \`$Prefix\`)==\`true\`]|[?Status.Timeline.CreationDateTime>=\`${startDate}\`]" \
    | \jq -r '.[]|"\(.Id),\(.Name),\(.Status.Timeline.CreationDateTime),\(.NormalizedInstanceHours)"' \
    | column -t -s,