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

for COMMAND in \
  dock_autohide_on \
  dock_restart \
  menubar_autohide_on \
  ui_server_restart \

do
  echorun $COMMAND
done
