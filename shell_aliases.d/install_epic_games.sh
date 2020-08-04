function install_epic_games() {
  brew cask install epic-games || return $?
  open '/Applications/Epic Games Launcher.app' || return $?
}
