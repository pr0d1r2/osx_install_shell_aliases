function install_tor_browser() {
  brew cask install tor-browser || return $?
  open "/Applications/Tor Browser.app" || return $?
}
