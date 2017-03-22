#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`
source $D_R/shell_aliases.d/run.sh || exit $?

for COMMAND in \
  dock_autohide_on \
  dock_restart \
  menubar_autohide_on \
  ui_server_restart \
  install_homebrew \
  disable_homebrew_analytics \
  install_mas \
  mas_signin \
  install_1password \
  install_pages \
  install_numbers \
  install_keynote \
  update_system \

do
  source $D_R/shell_aliases.d/$COMMAND.sh || exit $?
  run $COMMAND || exit $?
done
