function menubar_extras_bluetooth() {
  defaults read com.apple.systemuiserver menuExtras | \
    grep -q "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" || \
  defaults write com.apple.systemuiserver menuExtras -array-add \
    "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" || return $?

  defaults write com.apple.systemuiserver \
    "NSStatusItem Visible com.apple.menuextra.bluetooth" 1 || return $?
}
