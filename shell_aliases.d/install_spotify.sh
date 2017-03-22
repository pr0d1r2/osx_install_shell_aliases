function install_steam() {
  brew cask install spotify || return $?
  open /Applications/Spotify.app || return $?
}
