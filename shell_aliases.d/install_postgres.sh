function install_postgres() {
  brew install postgres || return $?
  brew services start postgres || return $?
}
