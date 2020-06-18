function install_archey() {
  brew install archey || return $?
  archey || return $?
}
