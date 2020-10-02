function install_java() {
  brew tap adoptopenjdk/openjdk || return $?
  brew cask install adoptopenjdk || return $?
}
