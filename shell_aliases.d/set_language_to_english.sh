function set_language_to_english() {
  sudo languagesetup -langspec English || return $?
}
