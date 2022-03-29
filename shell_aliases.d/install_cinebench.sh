function install_cinebench() {
  brew install --cask cinebench || return $?
  open /Applications/Cinebench.app || return $?
}
