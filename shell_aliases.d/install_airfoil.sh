function install_airfoil() {
  macos_version | grep -q "^10.14" && return 0
  brew cask install airfoil || return $?
  open /Applications/Airfoil.app || return $?
}
