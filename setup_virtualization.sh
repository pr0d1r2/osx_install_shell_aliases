#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_vmware_fusion_10 \
  install_vagrant \
  install_vagrant_vmware_utility \
  install_vagrant_vmware_plugin \

exit $?
