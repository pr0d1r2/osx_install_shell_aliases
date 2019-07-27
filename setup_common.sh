#!/bin/bash

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
  install_coreutils \
  install_screen \
  install_hub \
  install_parallel \
  install_git \
  install_git_lfs \
  link_projects_from_documents \
  install_rbenv \
  install_rbenv_ruby \
  install_shell_aliases \
  install_zsh \
  install_dotfiles \
  install_wget \
  install_axel \
  install_postgres \
  install_pgtune \
  install_rg \
  install_ag \
  install_rpl \
  install_htop \
  install_pstree \
  install_p7zip \
  install_aria2 \
  install_caffeine \
  install_commandq \
  install_1password \
  install_git_secrets \
  install_pwgen \
  install_tunnelblick \
  install_vox \
  install_spotify \
  install_kid3 \
  install_airfoil \
  install_omnifocus \
  install_iterm \
  install_openssh \
  install_rsync \
  install_macvim \
  install_atom \
  install_janus \
  install_shellcheck \
  install_google_chrome_1password_support \
  install_google_chrome \
  install_firefox \
  install_keybase \
  install_grammarly \
  install_osxfuse \
  install_sshfs \
  install_tor \
  install_torsocks \
  install_dante \
  install_tor_browser \
  install_youtube_dl \
  install_ffmpeg \
  install_lastpass \
  install_alfred \
  install_slack \
  install_zoomus \
  install_signal \
  install_whatsapp \
  install_telegram \
  install_skype \
  install_goofy \
  install_gpg_suite \
  install_terminal_notifier \
  install_rubbernet \
  install_wifi_explorer \
  install_pages \
  install_numbers \
  install_keynote \
  install_pixelmator \
  install_daisy_disk \
  install_disk_drill_media_recovery \
  install_mactracker \
  install_audio_hijack \
  install_hammerspoon \
  install_hazel \
  install_java \
  install_libreoffice \
  install_font_microsoft \
  install_logic_pro_x \
  install_quik \
  install_audioteka_split \
  install_imazing \
  install_trello \
  install_trello_wrk \
  install_docker \
  autostart_mail \
  autostart_calendar \
  sync_github_repositories \
  update_system \
  || return $?

run_upgrades \
  git \
  screen \
  openssl \
  openssh \
  rsync \
  tor \
  torsocks \
  dante \
  youtube-dl \
  ffmpeg \
  zsh \
  wget \
  aria2 \
