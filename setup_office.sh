#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_omnifocus \
  install_grammarly \
  install_lastpass \
  install_slack \
  install_zoomus \
  install_signal \
  install_whatsapp \
  install_telegram \
  install_skype \
  install_goofy \
  install_gpg_suite \
  install_pages \
  install_numbers \
  install_keynote \
  install_pixelmator \
  install_daisy_disk \
  install_disk_drill_media_recovery \
  install_mactracker \
  install_libreoffice \
  install_font_microsoft || exit $?