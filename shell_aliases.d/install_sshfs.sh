function install_sshfs() {
  case $(uname -p) in
    arm)
      echo "SSHFS fails to install on M1 chip"
      ;;
    *)
      brew install sshfs || return $?
      ;;
  esac
}
