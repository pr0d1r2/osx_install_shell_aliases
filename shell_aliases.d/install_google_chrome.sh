function install_google_chrome() {
  brew install --cask google-chrome || return $?
  open "/Applications/Google Chrome.app" || return $?
}
