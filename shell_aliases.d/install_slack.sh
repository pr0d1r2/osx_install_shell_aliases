function install_slack() {
  mas install 803453959 || return $?
  macos_autostart_app Slack 1
  open /Applications/Slack.app || return $?
}
