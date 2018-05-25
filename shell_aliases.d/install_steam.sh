function install_steam() {
  brew cask install steam || return $?
  open /Applications/Steam.app || return $?
  macos_autostart_remove Steam
}
