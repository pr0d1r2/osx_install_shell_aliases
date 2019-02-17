function install_docker() {
  brew cask install docker || return $?
  open /Applications/Docker.app || return $?
}
