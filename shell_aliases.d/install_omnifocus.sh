function install_omnifocus() {
  brew cask install omnifocus || return $?
  open /Applications/OmniFocus.app || return $?
  macos_autostart_app OmniFocus 1
}
