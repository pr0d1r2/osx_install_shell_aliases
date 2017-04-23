function set_hostname() {
  sudo scutil --set ComputerName $1 || return $?
  sudo scutil --set HostName $1 || return $?
  sudo scutil --set LocalHostName $1 || return $?
}
