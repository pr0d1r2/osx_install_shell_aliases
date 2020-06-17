function sleep_after_hour() {
  sudo systemsetup -setcomputersleep 60 || return $?
  sudo systemsetup -setdisplaysleep 60 || return $?
}
