function install_tunnelblick() {
  brew install --cask tunnelblick || return $?
  open /Applications/Tunnelblick.app || return $?
}
