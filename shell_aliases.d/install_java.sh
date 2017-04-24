function install_java() {
  brew cask install java || return $?
}
