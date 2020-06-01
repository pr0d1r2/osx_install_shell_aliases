function install_alfred() {
  brew cask install alfred || return $?
  open /Applications/Alfred\ 4.app || return $?
}
