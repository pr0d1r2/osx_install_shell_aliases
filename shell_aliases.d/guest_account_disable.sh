function guest_account_disable() {
  sudo /usr/bin/defaults write /Library/Preferences/com.apple.loginwindow \
    GuestEnabled -bool NO || return $?
  sudo defaults write /Library/Preferences/com.apple.AppleFileServer \
    guestAccess -bool NO || return $?
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server \
    AllowGuestAccess -bool NO || return $?
}
