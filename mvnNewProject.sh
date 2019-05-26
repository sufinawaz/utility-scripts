#!/bin/bash
SCRIPTS_DIR="$(dirname "$0")"
. $SCRIPTS_DIR/includes/header2arg.sh artifactId groupId $@

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) creates a new mvn boilerplate project for a given groupId and artifactId."
    exit 0
fi

artifactId=$1
groupId=$2

mvn -B archetype:generate  -DarchetypeGroupId=org.apache.maven.archetypes  -DgroupId=$groupId  -DartifactId=$artifactId
