function install_signal() {
  brew cask install signal || return $?
  open /Applications/Signal.app || return $?
}
