function install_omnifocus() {
  brew install --cask omnifocus || return $?
  macos_autostart_app OmniFocus 1
  open /Applications/OmniFocus.app || return $?
}
