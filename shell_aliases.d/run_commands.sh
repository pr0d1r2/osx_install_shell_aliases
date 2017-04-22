function run() {
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
    source $D_R/shell_aliases.d/$run_commands_COMMAND.sh || exit $?
    run_once $run_commands_COMMAND || exit $?
  done
}
