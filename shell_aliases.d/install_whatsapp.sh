function install_whatsapp() {
  brew cask install whatsapp || return $?
  open /Applications/WhatsApp.app || return $?
}
