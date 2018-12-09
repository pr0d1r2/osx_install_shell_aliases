function install_imazing() {
  brew cask install imazing || return $?
  open /Applications/iMazing.app || return $?
}
