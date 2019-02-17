function install_trello() {
  mas install 1278508951 || return $?
  open /Applications/Trello.app || return $?
}
