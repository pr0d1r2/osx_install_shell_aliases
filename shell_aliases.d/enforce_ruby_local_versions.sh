function enforce_ruby_local_versions() {
  find "$HOME/projects" -type f -depth 2 -name Gemfile | \
    parallel "test -f {//}/.ruby-version || echo $RBENV_RUBY_VERSION_GLOBAL | tee {//}/.ruby-version" || return $?
}
