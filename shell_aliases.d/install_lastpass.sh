function install_lastpass() {
  mas install 926036361 || return $?
  macos_autostart_app LastPass 1
  open /Applications/LastPass.app || return $?
}
