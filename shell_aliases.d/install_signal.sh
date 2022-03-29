function install_signal() {
  brew install --cask signal || return $?
  open /Applications/Signal.app || return $?
}
