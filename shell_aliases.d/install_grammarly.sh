function install_grammarly() {
  brew install --cask grammarly || return $?
  open /Applications/Grammarly.app || return $?
}
