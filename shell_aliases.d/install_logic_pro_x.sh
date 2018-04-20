function install_logic_pro_x() {
  mas install 634148309 || return $?
  open "/Applications/Logic Pro X.app" || return $?
}
