function install_audio_hijack() {
  brew install --cask audio-hijack || return $?
  open "/Applications/Audio Hijack.app" || return $?
}
