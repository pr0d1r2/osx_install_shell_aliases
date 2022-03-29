function install_battle_net() {
  brew install --cask battle-net || return $?
  open "/usr/local/Caskroom/battle-net/latest/Battle.net-Setup.app" || return $?
}
