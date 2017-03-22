update_system() {
  softwareupdate --install --all || return $?
}
