function install_osxfuse() {
  case $(uname -p) in
    arm)
      echo "SSHFS fails to install on M1 chip (even with macfuse installed)"
      # brew install --cask macfuse || return $?
      ;;
    *)
      brew install --cask osxfuse || return $?
      ;;
  esac
}
