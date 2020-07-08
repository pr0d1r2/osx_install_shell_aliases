function install_insomnia() {
  brew cask install insomnia || return $?
  open /Applications/Insomnia.app || return $?
}
