function trackpad_disable_swipe_navigation() {
  defaults write .GlobalPreferences AppleEnableSwipeNavigateWithScrolls 0 || return $?
}
