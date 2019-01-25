function disable_siri() {
  # Not working due to system integrity check.
  # See https://apple.stackexchange.com/questions/324119/how-do-you-disable-siri-permanently-on-macos-sierra-10-12-6
  #
  # sudo defaults write /System/Library/LaunchAgents/com.apple.Siri.plist Disabled -bool true
  defaults write com.apple.Siri StatusMenuVisible -bool false || return $?
  defaults write com.apple.Siri UserHasDeclinedEnable -bool true || return $?
  defaults write com.apple.assistant.support 'Assistant Enabled' 0 || return $?
}
