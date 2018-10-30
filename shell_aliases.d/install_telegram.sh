function install_telegram() {
  brew cask install telegram-desktop || return $?
  open '/Applications/Telegram Desktop.app' || return $?
}
