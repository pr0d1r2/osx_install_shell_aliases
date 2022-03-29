function install_vmware_fusion_10() {
  brew install --cask homebrew/cask-versions/vmware-fusion10 || return $?
}
