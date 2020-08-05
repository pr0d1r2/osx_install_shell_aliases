function install_redis() {
  brew install redis || return $?
  rpl "$(cat /usr/local/etc/redis.conf | grep "^databases ")" "databases $(nproc)" /usr/local/etc/redis.conf || return $?
  brew services restart redis || return $?
}
