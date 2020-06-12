function install_osx_crond() {
  test -d "$HOME/projects/osx_crond" || git clone git@github.com:pr0d1r2/osx_crond.git "$HOME/projects/osx_crond" || return $?
  cd "$HOME/projects/osx_crond" || return $?
  sh setup.sh || return $?
}
