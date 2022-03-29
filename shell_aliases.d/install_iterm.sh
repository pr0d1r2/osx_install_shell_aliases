function install_iterm() {
  brew install --cask iterm2 || return $?
  open /Applications/iTerm.app || return $?
}
