function install_1password() {
  mas install 1333542190 || return $?
  open "/Applications/1Password 7.app" || return $?
}
