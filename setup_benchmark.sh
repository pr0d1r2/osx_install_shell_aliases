#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_black_magic_disk_speed_test \
  install_cinebench \
  install_luxmark \
  install_speedtest_cli \

exit $?
