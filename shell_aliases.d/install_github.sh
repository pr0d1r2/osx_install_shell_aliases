function install_github() {
  brew cask install github || return $?
  open '/Applications/GitHub Desktop.app' || return $?
}
