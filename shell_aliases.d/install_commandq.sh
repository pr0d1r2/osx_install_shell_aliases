function install_commandq() {
  brew cask install commandq || return $?
  open /Applications/CommandQ.app || return $?
}
