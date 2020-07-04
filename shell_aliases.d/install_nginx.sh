function install_nginx() {
  brew install nginx || return $?
}
