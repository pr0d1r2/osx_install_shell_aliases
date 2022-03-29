#!/usr/bin/env bash

D_R=$(cd "$(dirname "$0")" && pwd -P)
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

run_commands \
  set_language_to_english \
  sleep_after_hour \
  disable_siri \
  trackpad_unnatural_scroll_direction \
  trackpad_disable_swipe_navigation \
  dock_autohide_on \
  dock_only_show_active_apps \
  dock_restart \
  menubar_autohide_on \
  menubar_clock_with_date \
  menubar_show_battery_percent \
  menubar_extras_bluetooth \
  menubar_time_machine \
  guest_account_disable \
  ui_server_restart \
  preference_cache_restart \
  setup_tmp_directory \
  diasble_bluetooth_hid_autoseek \
  open_photos_to_sync \
  install_homebrew \
  disable_homebrew_analytics \
  install_homebrew_caskroom \
  install_mas \
  install_content_caching \
  install_caffeine \
  install_commandq \
  install_1password \
  install_alfred \
  install_hammerspoon \
  install_osx_crond \
  install_an_adblocker_for_safari \
  install_an_tracking_blocker_for_safari \
  install_dns_internet_filter \
  install_java \
  install_trash \
  install_tree \
  install_ncdu \
  install_tldr \
  install_rename \
  autostart_mail \
  autostart_calendar \
  update_system \
  || return $?
