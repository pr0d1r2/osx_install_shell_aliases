function preference_cache_restart() {
  killall -HUP cfprefsd || return $?
}
