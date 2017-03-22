function install_torbrowser() {
  brew cask install torbrowser || return $?
  open /Applications/TorBrowser.app || return $?
}
