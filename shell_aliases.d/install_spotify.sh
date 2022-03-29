function install_spotify() {
  brew install --cask spotify || return $?
  open /Applications/Spotify.app || return $?
}
