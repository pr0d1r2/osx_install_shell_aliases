function install_vagrant() {
  brew cask install vagrant vagrant-manager || return $?
  brew install vagrant-completion || return $?
}
