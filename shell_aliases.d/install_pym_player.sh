function install_pym_player() {
  brew tap 'pr0d1r2/cask-apps' || return $?
  brew install --cask pym_player || return $?
}
