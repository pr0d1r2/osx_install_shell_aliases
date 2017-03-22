function ui_server_restart() {
  killall SystemUIServer || return $?
}
