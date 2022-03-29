function install_luxmark() {
  brew install --cask luxmark || return $?
  open /Applications/LuxMark.app || return $?
}
