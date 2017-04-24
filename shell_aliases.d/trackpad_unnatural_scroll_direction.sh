function trackpad_unnatural_scroll_direction() {
  defaults write ~/Library/Preferences/.GlobalPreferences com.apple.swipescrolldirection -bool false || return $?
}
