function install_parallel() {
  brew install parallel || return $?
  echo "will cite" | parallel --citation
}
