function setup_rubies() {
  find "$HOME/projects" -type f -depth 2 -name .ruby-version | parallel cat | sed -e 's/^ruby-//g' | sort -u | \
   parallel "test -d $HOME/.rbenv/versions/{} || rbenv install {}" || return $?
}
