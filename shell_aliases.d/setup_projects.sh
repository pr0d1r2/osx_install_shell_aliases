function setup_projects() {
  find "$HOME/projects" -type d -depth 2 -name .git | \
    parallel "cd {//} && test -x bin/setup && echo && echo && echo SETUP {//} && eval '$(rbenv init -)' && export PATH=\"$HOME/.rbenv/shims:\$PATH\" && (bin/setup -o || bin/setup -l || bin/setup)" || return $?
}
