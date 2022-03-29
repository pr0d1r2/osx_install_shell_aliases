function install_commandq() {
  brew install --cask commandq || return $?
  macos_autostart_app CommandQ 1
  open /Applications/CommandQ.app || return $?
}
