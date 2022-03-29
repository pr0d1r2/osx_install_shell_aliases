function install_pipenv() {
  case $(uname -p) in
    arm)
      echo "Not compiling python2 on M1 chip"
      ;;
    *)
      pip2 install pipenv || return $?
      ;;
  esac
  pip3 install pipenv || return $?
}
