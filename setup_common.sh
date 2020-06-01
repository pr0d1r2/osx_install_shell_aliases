#!/usr/bin/env bash

D_R=$(cd "$(dirname "$0")" && pwd -P)
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_autostart_app.sh" || exit $?
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_autostart_remove.sh" || exit $?
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_version.sh" || exit $?

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

run_commands \
  set_language_to_english \
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
  mas_signin \
  install_caffeine \
  install_commandq \
  install_1password \
  install_git_secrets \
  install_tunnelblick \
  install_keybase \
  install_tor_browser \
  install_alfred \
  install_rubbernet \
  install_wifi_explorer \
  install_hammerspoon \
  install_hazel \
  install_java \
  install_logic_pro_x \
  install_trello \
  install_trello_wrk \
  autostart_mail \
  autostart_calendar \
  sync_github_repositories \
  update_system \
  || return $?
