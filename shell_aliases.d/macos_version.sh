function macos_version() {
  defaults read loginwindow SystemVersionStampAsString || return $?
}
