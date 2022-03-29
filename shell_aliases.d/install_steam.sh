function install_steam() {
  brew install --cask steam || return $?
  open /Applications/Steam.app || return $?
  macos_autostart_remove Steam
}
