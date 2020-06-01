#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_vox \
  install_spotify \
  install_kid3 \
  install_airfoil \
  install_youtube_dl \
  install_audio_hijack \
  install_ffmpeg || exit $?
