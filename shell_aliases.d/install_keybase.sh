function install_keybase() {
  brew cask install keybase || return $?
  open /Applications/Keybase.app || return $?
}
