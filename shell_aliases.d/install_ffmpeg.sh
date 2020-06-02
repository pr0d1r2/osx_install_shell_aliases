function install_ffmpeg() {
  brew install faac || return $?
  case $(defaults read loginwindow SystemVersionStampAsString | cut -f1-2 -d .) in
    10.13)
      brew install ffmpeg -s || return $?
      ;;
    *)
      brew install ffmpeg || return $?
      ;;
  esac
}
