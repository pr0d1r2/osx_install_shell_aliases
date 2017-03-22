function menubar_autohide_off() {
  defaults write NSGlobalDomain _HIHideMenuBar -bool false || return $?
}
