function install_grammarly() {
  brew cask install grammarly || return $?
  open /Applications/Grammarly.app || return $?
}
