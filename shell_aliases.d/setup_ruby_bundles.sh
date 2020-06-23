function setup_ruby_bundles() {
  find "$HOME/projects" -type f -depth 2 -name Gemfile | \
    parallel -j1 "cd {//} && echo && echo && echo RUBY BUNDLE {//} && eval '$(rbenv init -)' && gem install bundler && (bundle install -j$(sysctl hw.logicalcpu | cut -f 2 -d : | cut -b2-) || bundle install)" || return $?
}
