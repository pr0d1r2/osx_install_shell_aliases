function install_omnifocus2() {
  brew cask install omnifocus2 || return $?
  macos_autostart_app OmniFocus 1
  open /Applications/OmniFocus.app || return $?
}
