#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`
source $D_R/shell_aliases.d/run_commands.sh || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_webcam_settings \
  install_logitech_camera_settings \
  install_macos_server \
  || return $?
