function install_zoomus() {
  brew install --cask zoomus || return $?
  open /Applications/zoom.us.app || return $?
}
