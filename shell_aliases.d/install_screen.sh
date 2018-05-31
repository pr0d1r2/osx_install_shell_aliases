function install_screen() {
  brew install screen || return $?
  screen -d -m brew upgrade screen
}
