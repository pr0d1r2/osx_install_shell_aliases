function run() {
  echo "$@"
  $@ || return $?
}

function run_commands() {
  for run_commands_COMMAND in $@
  do
    source $D_R/shell_aliases.d/$run_commands_COMMAND.sh || exit $?
    run $run_commands_COMMAND || exit $?
  done
}
