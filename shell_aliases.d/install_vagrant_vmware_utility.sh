function install_vagrant_vmware_utility() {
  brew install --cask vagrant-vmware-utility || return $?
}
