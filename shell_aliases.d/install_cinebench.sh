function install_cinebench() {
  brew cask install cinebench || return $?
  open /Applications/Cinebench.app || return $?
}
