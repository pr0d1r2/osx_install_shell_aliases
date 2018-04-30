function install_google_chrome_1password_support() {
  test -d "$HOME/Library/Application\ Support/Google/Chrome" || \
    mkdir -p "$HOME/Library/Application\ Support/Google/Chrome"
  return $?
}
