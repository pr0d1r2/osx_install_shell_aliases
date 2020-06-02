function install_ffmpeg() {
  brew install fdk-aac || return $?
  brew install homebrew-ffmpeg/ffmpeg/ffmpeg --with-fdk-aac || return $?
}
