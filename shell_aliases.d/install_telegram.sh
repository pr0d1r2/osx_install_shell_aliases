function install_telegram() {
  brew cask install telegram-desktop || return $?
}
