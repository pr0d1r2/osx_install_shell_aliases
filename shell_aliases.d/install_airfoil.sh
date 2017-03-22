function install_airfoil() {
  brew cask install airfoil || return $?
  open /Applications/Airfoil.app || return $?
}
