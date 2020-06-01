#!/usr/bin/env bash

D_R=`cd \`dirname $0\` ; pwd -P`
source $D_R/shell_aliases.d/run_commands.sh || exit $?

sh $D_R/setup_development_rails.sh || exit $?
sh $D_R/setup_media.sh || exit $?
sh $D_R/setup_office.sh || exit $?
sh $D_R/setup_media.sh || exit $?
sh $D_R/setup_network.sh || exit $?
sh $D_R/setup_music_production.sh || exit $?

run_commands \
  install_webcam_settings \
  install_logitech_camera_settings \
  install_macos_server \
  || return $?
