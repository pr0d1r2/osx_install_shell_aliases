function install_skype() {
  brew cask install skype || return $?
  open /Applications/Skype.app || return $?
}
