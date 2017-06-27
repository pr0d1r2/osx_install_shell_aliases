function install_firefox() {
  brew cask install firefox || return $?
}
