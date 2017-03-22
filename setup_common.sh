#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`

for FILE in `find $D_R/shell_aliases.d -type f -name "*.sh"`
do
  source $FILE || return $?
done

function echorun() {
  echo "$@"
  $@ || return $?
}

for SCRIPT in \
  dock_autohide_on \
  dock_restart \

do
  echorun $SCRIPT
done
