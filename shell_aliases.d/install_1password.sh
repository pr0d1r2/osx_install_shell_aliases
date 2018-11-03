function install_1password() {
  mas install 443987910 || return $?
  open /Applications/1Password.app || return $?
}
