function menubar_clock_with_date() {
  defaults write com.apple.menuextra.clock "DateFormat" "EEE MMM d  h:mm:ss" || return $?
}
