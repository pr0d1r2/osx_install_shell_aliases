function install_osxfuse() {
  brew install --cask osxfuse || return $?
}
