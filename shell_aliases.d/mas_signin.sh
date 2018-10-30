function mas_signin() {
  macos_version | grep -q "^10.14" && return 0
  local mas_signin_EMAIL
  local mas_signin_PASSWORD
  read -p 'MAS email: ' mas_signin_EMAIL
  read -s -p 'MAS password (will not be echoed): ' mas_signin_PASSWORD
  mas signin "${mas_signin_EMAIL}" "${mas_signin_PASSWORD}" || return $?
}
