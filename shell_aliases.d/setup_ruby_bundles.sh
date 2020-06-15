function setup_ruby_bundles() {
  find "$HOME/projects" -type f -depth 2 -name Gemfile | \
    parallel -j1 "cd {//} && echo && echo && echo RUBY BUNDLE {//} && eval '$($HOME/.rbenv/bin/rbenv init -)' && $HOME/.rbenv/shims/gem install bundler && ($HOME/.rbenv/shims/bundle install -j$(sysctl hw.logicalcpu | cut -f 2 -d : | cut -b2-) || $HOME/.rbenv/shims/bundle install)" || return $?
}
