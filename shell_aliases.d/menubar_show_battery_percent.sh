function menubar_show_battery_percent() {
  defaults write com.apple.menuextra.battery ShowPercent YES || return $?
}
