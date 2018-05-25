function install_slack() {
  mas install 803453959 || return $?
  open /Applications/Slack.app || return $?
  macos_autostart_app Slack 1
}
