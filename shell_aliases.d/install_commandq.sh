function install_commandq() {
  brew cask install commandq || return $?
  macos_autostart_app CommandQ 1
  open /Applications/CommandQ.app || return $?
}
