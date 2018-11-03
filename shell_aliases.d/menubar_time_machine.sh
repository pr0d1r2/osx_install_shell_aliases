function menubar_time_machine() {
  defaults read com.apple.systemuiserver menuExtras | \
    grep -q "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" || \
  /usr/libexec/PlistBuddy \
    -c 'Add :menuExtras:1 string "/System/Library/CoreServices/Menu Extras/TimeMachine.menu"' \
    "$HOME/Library/Preferences/com.apple.systemuiserver.plist" || return $?
  defaults write com.apple.systemuiserver \
    "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool TRUE || return $?
}
