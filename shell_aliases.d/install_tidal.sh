function install_tidal() {
  brew install --cask tidal || return $?
  open /Applications/TIDAL.app || return $?
}
