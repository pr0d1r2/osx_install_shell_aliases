function install_homebrew_python2() {
  brew tap 'pr0d1r2/homebrew-python2' || return $?
  # Unsupported packages does not have binary bottles
  brew install --build-from-source 'pr0d1r2/python2/python@2.7.17' || return $?
}
