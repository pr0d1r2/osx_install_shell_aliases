function install_skype() {
  brew install --cask skype || return $?
  open /Applications/Skype.app || return $?
}
