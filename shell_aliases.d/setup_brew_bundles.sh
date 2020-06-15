function setup_brew_bundles() {
  find "$HOME/projects" -type f -depth 2 -name Brewfile | \
    parallel -j1 "cd {//} && echo && echo && echo BREW BUNDLE {//} && brew bundle" || return $?

  # Check https://gist.github.com/odarriba/011eb7df4ab235ad592e191f6bd6f31c
  if (find "$HOME/projects" -type f -depth 2 -name Brewfile | parallel --halt now,success=1 "grep -q \"brew 'opencv@2'\" {}"); then
    local setup_brew_bundles_PREFIX
    setup_brew_bundles_PREFIX="$(brew --prefix opencv@2)" || return $?
    "$HOME/.rbenv/shims/bundle" config build.ruby-opencv \
      --with-opencv-lib="$setup_brew_bundles_PREFIX/lib" \
      --with-opencv-include="$setup_brew_bundles_PREFIX/include" || return $?
  fi
}
