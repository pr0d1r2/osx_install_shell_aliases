function install_airfoil() {
  defaults read loginwindow SystemVersionStampAsString | grep -q "^10.14" && return 0
  brew cask install airfoil || return $?
  open /Applications/Airfoil.app || return $?
}
