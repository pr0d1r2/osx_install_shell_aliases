function install_whalebrew() {
  brew install whalebrew || return $?
  test -x /usr/local/bin/whalesay || whalebrew install whalebrew/whalesay || return $?
  whalesay "whalebrew ready" || return $?
}
