function install_rbenv_ruby() {
  brew install readline || return $?
  brew link readline --force || return $?
  RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)" "rbenv" install "$RBENV_RUBY_VERSION_GLOBAL" || return $?
  "rbenv" global "$RBENV_RUBY_VERSION_GLOBAL" || return $?
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  gem install bundler --no-ri --no-rdoc || return $?
}
