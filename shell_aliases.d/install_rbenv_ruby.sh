function install_rbenv_ruby() {
  rbenv install "2.5.1" || return $?
  rbenv global "2.5.1" || return $?
}
