function install_omnifocus() {
  brew cask install omnifocus || return $?
  macos_autostart_app OmniFocus 1
  open /Applications/OmniFocus.app || return $?
}
