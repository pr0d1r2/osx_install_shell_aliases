function install_luxmark() {
  brew cask install luxmark || return $?
  open /Applications/LuxMark.app || return $?
}
