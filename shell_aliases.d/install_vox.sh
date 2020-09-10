function install_vox() {
  brew cask install vox vox-preferences-pane || return $?
}
