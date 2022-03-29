function install_alfred() {
  brew install --cask alfred || return $?
  open /Applications/Alfred\ 4.app || return $?
}
