function install_rbenv() {
  if [ ! -d $HOME/.rbenv ]; then
    git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv || return $?
  else
    cd $HOME/.rbenv || return $?
    git pull || return $?
  fi
  if [ ! -d $HOME/.rbenv/plugins/ruby-build ]; then
    git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build || return $?
  else
    cd $HOME/.rbenv/plugins/ruby-build || return $?
    git pull || return $?
  fi
  if [ ! -d $HOME/.rbenv/plugins/rbenv-gem-rehash ]; then
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git $HOME/.rbenv/plugins/rbenv-gem-rehash || return $?
  else
    cd $HOME/.rbenv/plugins/rbenv-gem-rehash || return $?
    git pull || return $?
  fi
}
