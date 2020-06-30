function install_vagrant_vmware_plugin() {
  vagrant plugin install vagrant-vmware-desktop || return $?
  vagrant plugin license vagrant-vmware-desktop "$HOME/Downloads/license.lic" || return $?
}
