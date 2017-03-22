function install_iterm() {
  brew cask install iterm2 || return $?
  open /Applications/iTerm.app || return $?
}
