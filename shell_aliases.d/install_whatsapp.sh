function install_whatsapp() {
  brew install --cask whatsapp || return $?
  open /Applications/WhatsApp.app || return $?
}
