function install_imazing() {
  brew install --cask imazing || return $?
  open /Applications/iMazing.app || return $?
}
