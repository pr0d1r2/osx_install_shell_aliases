function install_git_secrets() {
  brew install git-secrets || return $?
}
