function install_vagrant_vmware_utility() {
  brew cask install vagrant-vmware-utility || return $?
  vagrant plugin install vagrant-vmware-fusion || return $?
}
