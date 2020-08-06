#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_github \
  install_github_keygen \
  install_github_markdown_toc \
  install_github_release \

exit $?
