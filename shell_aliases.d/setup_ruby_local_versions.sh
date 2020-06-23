function setup_ruby_local_versions() {
  find "$HOME/projects" -type f -depth 2 -name .ruby-version | \
    parallel "cd {//} && cat .ruby-version | sed -e \"s/^ruby-//g\" | parallel '/usr/local/bin/rbenv local'" || return $?
}
