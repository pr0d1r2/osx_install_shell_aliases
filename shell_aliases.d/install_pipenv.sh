function install_pipenv() {
  pip2 install pipenv || return $?
  pip3 install pipenv || return $?
}
