#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`
source $D_R/shell_aliases.d/run.sh || exit $?

sh $D_R/setup_common.sh || exit $?

for COMMAND in \
  install_webcam_settings \
  install_logitech_camera_settings \

do
  source $D_R/shell_aliases.d/$COMMAND.sh || exit $?
  run $COMMAND || exit $?
done
