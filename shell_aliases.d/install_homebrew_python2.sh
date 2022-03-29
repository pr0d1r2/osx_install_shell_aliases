function install_homebrew_python2() {
  brew tap 'pr0d1r2/homebrew-python2' || return $?
  # Unsupported packages do not have binary bottles
  #
  # Enforce --build-from-source to install it on 10.13 which is the last macOS with disk encryption on some Macs.
  # It may be the case than on a never macOS the binary bottle will still be available.
  case $(uname -p) in
    arm)
      echo "Not compiling python2 on M1 chip"
      # arch -x86_64 /usr/local/bin/brew install --build-from-source 'pr0d1r2/python2/python@2.7.17' || return $?
      ;;
    *)
      brew install --build-from-source 'pr0d1r2/python2/python@2.7.17' || return $?
      ;;
  esac
}
