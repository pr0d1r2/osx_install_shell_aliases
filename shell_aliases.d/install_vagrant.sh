function install_vagrant() {
  brew install --cask vagrant vagrant-manager || return $?
  brew install vagrant-completion || return $?
}
