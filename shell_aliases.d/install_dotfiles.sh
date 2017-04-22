function install_dotfiles() {
  if [ ! -d $HOME/projects/dotfiles ]; then
    git clone git@github.com:pr0d1r2/dotfiles.git $HOME/projects/dotfiles || return $?
  else
    cd $HOME/projects/dotfiles || return $?
    git pull || return $?
  fi
  cd $HOME/projects/dotfiles || return $?
  sh setup.sh || return $?
}
