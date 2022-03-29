function install_redis() {
  brew install redis || return $?
  if [ -f /opt/homebrew/etc/redis.conf ]; then
    rpl "$(cat /opt/homebrew/etc/redis.conf | grep "^databases ")" "databases $(nproc)" /opt/homebrew/etc/redis.conf || return $?
  else
    rpl "$(cat /usr/local/etc/redis.conf | grep "^databases ")" "databases $(nproc)" /usr/local/etc/redis.conf || return $?
  fi
  brew services restart redis || return $?
}
