function install_gog_galaxy() {
  brew install --cask gog-galaxy || return $?
  open "/Applications/GOG Galaxy.app" || return $?
  # macos_autostart_remove "GOG Galaxy"
}
