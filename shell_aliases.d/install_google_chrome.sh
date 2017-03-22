function install_google_chrome() {
  brew cask install google-chrome || return $?
  open "/Applications/Google Chrome.app" || return $?
}
