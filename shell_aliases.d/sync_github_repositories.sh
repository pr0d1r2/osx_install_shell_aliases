function sync_github_repositories() {
  source $HOME/.compiled_shell_aliases.sh || return $?
  github_sync_projects || return $?
}
