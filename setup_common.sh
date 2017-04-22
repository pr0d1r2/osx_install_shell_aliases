#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`
source $D_R/shell_aliases.d/run_commands.sh || exit $?

run_commands \
  dock_autohide_on \
  dock_restart \
  menubar_autohide_on \
  ui_server_restart \
  install_homebrew \
  disable_homebrew_analytics \
  install_mas \
  mas_signin \
  install_1password \
  install_tunnelblick \
  install_spotify \
  install_airfoil \
  install_omnifocus \
  install_iterm \
  install_macvim \
  install_google_chrome \
  install_grammarly \
  install_torbrowser \
  install_lastpass \
  install_slack \
  install_zoomus \
  install_skype \
  install_rubbernet \
  install_wifi_explorer \
  install_pages \
  install_numbers \
  install_keynote \
  install_pixelmator \
  install_daisy_disk \
  install_disk_drill_media_recovery \
  install_mactracker \
  install_steam \
  install_audio_hijack \
  install_hammerspoon \
  install_rg \
  update_system \
  || return $?
