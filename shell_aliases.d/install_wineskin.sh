function install_wineskin() {
  brew cask install wineskin-winery || return $?
  open '/Applications/Wineskin Winery.app' || return $?
}
