function install_rbenv_ruby() {
  brew install readline || return $?
  RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)" "$HOME/.rbenv/bin/rbenv" install "2.5.3" || return $?
  "$HOME/.rbenv/bin/rbenv" global "2.5.3" || return $?
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  gem install bundler --no-ri --no-rdoc || return $?
}
