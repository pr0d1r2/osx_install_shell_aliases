function dock_autohide_on() {
  defaults write com.apple.dock autohide -bool true || return $?
}
