function install_rbenv() {
  brew install rbenv || return $?
  brew install ruby-build || return $?
}
