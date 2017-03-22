function dock_restart() {
  killall Dock || return $?
}
