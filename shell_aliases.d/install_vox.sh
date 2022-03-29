function install_vox() {
  brew install --cask vox vox-preferences-pane || return $?
}
