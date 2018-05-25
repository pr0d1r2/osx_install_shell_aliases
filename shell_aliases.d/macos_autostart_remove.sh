function macos_autostart_remove() {
  osascript -e "tell application \"System Events\" to delete login item \"$1\""
}
