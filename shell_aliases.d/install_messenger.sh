function install_messenger() {
  mas install 1480068668 || return $?
  open open /Applications/Messenger.app || return $?
}
