function install_insomnia() {
  brew install --cask insomnia || return $?
  open /Applications/Insomnia.app || return $?
}
