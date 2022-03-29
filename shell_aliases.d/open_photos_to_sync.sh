function open_photos_to_sync() {
  if [ -e /Applications/Photos.app ]; then
    open /Applications/Photos.app/ || return $?
  fi
}
