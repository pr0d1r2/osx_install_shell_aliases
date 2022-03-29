function install_java() {
  brew tap adoptopenjdk/openjdk || return $?
  brew install --cask adoptopenjdk || return $?
}
