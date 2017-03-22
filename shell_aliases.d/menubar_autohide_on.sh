function menubar_autohide_on() {
  defaults write NSGlobalDomain _HIHideMenuBar -bool true || return $?
}
