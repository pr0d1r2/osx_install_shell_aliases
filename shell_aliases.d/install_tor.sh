function install_tor() {
  brew install tor || return $?
  brew services start tor || return $?
}
