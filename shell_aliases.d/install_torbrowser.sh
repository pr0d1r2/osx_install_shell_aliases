function install_torbrowser() {
  brew cask install tor-browser || return $?
  open /Applications/TorBrowser.app || return $?
}
