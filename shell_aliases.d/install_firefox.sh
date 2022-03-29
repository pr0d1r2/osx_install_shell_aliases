function install_firefox() {
  brew install --cask firefox || return $?
}
