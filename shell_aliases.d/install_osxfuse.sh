function install_osxfuse() {
  brew cask install osxfuse || return $?
}
