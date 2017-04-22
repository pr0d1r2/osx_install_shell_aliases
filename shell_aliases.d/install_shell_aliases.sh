function install_shell_aliases() {
  if [ ! -d $HOME/projects/shell_aliases_compiler ]; then
    git clone git@github.com:pr0d1r2/shell_aliases_compiler.git $HOME/projects/shell_aliases_compiler || return $?
  else
    cd $HOME/projects/shell_aliases_compiler || return $?
    git pull || return $?
  fi
  cd $HOME/projects/shell_aliases_compiler || return $?
  if [ ! -d $HOME/projects/local_shell_aliases ]; then
    mkdir -p $HOME/projects/local_shell_aliases || return $?
  fi
  cp .config.sh.example .config.sh || return $?
  sh setup.sh || return $?
}
