function diasble_bluetooth_hid_autoseek() {
  sudo defaults write /Library/Preferences/com.apple.Bluetooth BluetoothAutoSeekKeyboard '1' || return $?
  sudo defaults write /Library/Preferences/com.apple.Bluetooth BluetoothAutoSeekPointingDevice '1' || return $?
}
