function install_spotify() {
  brew cask install spotify || return $?
  open /Applications/Spotify.app || return $?
}
