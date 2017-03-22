function dock_autohide_off() {
  defaults delete com.apple.dock autohide || return $?
}
