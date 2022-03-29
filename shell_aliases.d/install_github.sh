function install_github() {
  brew install --cask github || return $?
  open '/Applications/GitHub Desktop.app' || return $?
}
