function install_gpg_suite() {
  brew install homebrew/cask-versions/gpg-suite-nightly || return $?
  open "/Applications/GPG Keychain.app" || return $?
}
