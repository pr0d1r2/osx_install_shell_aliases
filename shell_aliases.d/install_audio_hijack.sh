function install_audio_hijack() {
  brew cask install audio-hijack || return $?
  open "/Applications/Audio Hijack.app" || return $?
}
