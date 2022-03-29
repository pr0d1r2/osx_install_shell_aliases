function install_telegram() {
  brew install --cask telegram-desktop || return $?
  open '/Applications/Telegram Desktop.app' || return $?
}
