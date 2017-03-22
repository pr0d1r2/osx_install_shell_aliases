function install_zoomus() {
  brew cask install zoomus || return $?
  open /Applications/zoom.us.app || return $?
}
