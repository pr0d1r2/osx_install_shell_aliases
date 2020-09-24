function install_speedtest() {
  mas install 1153157709 || return $?
  open /Applications/Speedtest.app || return $?
}
