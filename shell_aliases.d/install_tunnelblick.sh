function install_tunnelblick() {
  brew cask install tunnelblick || return $?
  open /Applications/Tunnelblick.app || return $?
}
