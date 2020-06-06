function install_black_magic_disk_speed_test() {
  mas install 425264550 || return $?
  open "/Applications/Blackmagic Disk Speed Test.app" || return $?
}
