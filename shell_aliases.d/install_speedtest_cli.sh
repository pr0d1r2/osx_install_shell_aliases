function install_speedtest_cli() {
  brew install speedtest-cli || return $?
  speedtest-cli || return $?
}
