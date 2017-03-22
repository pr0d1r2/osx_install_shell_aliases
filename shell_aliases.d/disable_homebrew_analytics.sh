function disable_homebrew_analytics() {
  brew analytics off || return $?
}
