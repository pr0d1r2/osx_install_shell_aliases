function setup_tmp_directory() {
  if [ ! -d "$HOME/tmp" ]; then
    mkdir "$HOME/tmp" || return $?
  fi
  sudo tmutil addexclusion "$HOME/tmp" || return $?
}
