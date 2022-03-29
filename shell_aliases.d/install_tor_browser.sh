function install_tor_browser() {
  brew install --cask tor-browser || return $?
  open "/Applications/Tor Browser.app" || return $?
}
