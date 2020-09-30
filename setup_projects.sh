#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?
source "$D_R/shell_aliases.d/RBENV_RUBY_VERSION_GLOBAL.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  setup_projects \
  fetch_projects_hourly || exit $?
