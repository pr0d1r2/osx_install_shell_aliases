MARKER_DIR="$HOME/.osx_install_shell_aliases"

function run() {
  source $D_R/shell_aliases.d/$1.sh || return $?
  echo "$1"
  $1 || return $?
}

function run_once_marker() {
  echo $MARKER_DIR/$1.done
}

function run_once_mark() {
  if [ ! -d $MARKER_DIR ]; then
    mkdir -p $MARKER_DIR || return $?
  fi
  touch `run_once_marker $1` || return $?
}

function run_once() {
  if [ ! -e `run_once_marker $1` ]; then
    run $1 || return $?
    run_once_mark $1 || return $?
  fi
}

function run_commands() {
  for run_commands_COMMAND in $@
  do
    run_once $run_commands_COMMAND || exit $?
  done
}

function run_upgrades() {
  parallel \
    "screen -d -m brew upgrade {}" \
    ::: \
    "$@"
  return $?
}

# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_autostart_app.sh" || exit $?
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_autostart_remove.sh" || exit $?
# shellcheck disable=SC1090
source "$D_R/shell_aliases.d/macos_version.sh" || exit $?

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
