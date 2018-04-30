function install_hazel() {
  brew cask install hazel || return $?
  open /Users/pr0d1r2/Library/PreferencePanes/Hazel.prefPane || return $?
}
