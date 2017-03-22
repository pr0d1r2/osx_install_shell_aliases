function mas_signin() {
  local mas_signin_EMAIL
  local mas_signin_PASSWORD
  read -p 'MAS email: ' mas_signin_EMAIL
  read -s -p 'MAS password (will not be echoed): ' mas_signin_PASSWORD
  mas signin "${mas_signin_EMAIL}" "${mas_signin_PASSWORD}" || return $?
}
