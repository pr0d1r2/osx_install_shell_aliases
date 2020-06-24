function install_steelseries_engine() {
  brew install homebrew/cask-drivers/steelseries-engine || return $?
  open "/Applications/SteelSeries Engine 3/SteelSeries Engine 3.app" || return $?
}
