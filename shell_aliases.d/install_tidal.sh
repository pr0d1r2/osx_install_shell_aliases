function install_tidal() {
  brew cask install tidal || return $?
  open /Applications/TIDAL.app || return $?
}
