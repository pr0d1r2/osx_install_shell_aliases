function install_git() {
  brew install git || return $?
  screen -d -m brew upgrade git
}
