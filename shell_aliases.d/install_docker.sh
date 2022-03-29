function install_docker() {
  brew install --cask docker || return $?
  open /Applications/Docker.app || return $?
}
