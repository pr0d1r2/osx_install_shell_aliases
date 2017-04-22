function run() {
  source $D_R/shell_aliases.d/$1.sh || return $?
  echo "$@"
  $@ || return $?
}

function run_once_marker() {
  echo $HOME/.osx_install_shell_aliases/$1.done
}

function run_once() {
  if [ ! -e `run_once_marker $1` ]; then
    run $1 || return $?
    touch `run_once_marker $1`
  fi
}

function run_commands() {
  for run_commands_COMMAND in $@
  do
    run_once $run_commands_COMMAND || exit $?
  done
}
