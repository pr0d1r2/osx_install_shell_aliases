#!/usr/bin/env bash

D_R="$(cd "$(dirname $0)" ; pwd -P)"
source "$D_R/shell_aliases.d/run_commands.sh" || exit $?

sh $D_R/setup_common.sh || exit $?

run_commands \
  install_coreutils \
  install_screen \
  install_hub \
  install_parallel \
  install_git \
  install_git_lfs \
  install_rbenv \
  install_rbenv_ruby \
  install_shell_aliases \
  install_zsh \
  install_dotfiles \
  install_wget \
  install_axel \
  install_postgres \
  install_pgtune \
  install_rg \
  install_ag \
  install_rpl \
  install_htop \
  install_pstree \
  install_p7zip \
  install_pwgen \
  install_iterm \
  install_openssl \
  install_openssh \
  install_rsync \
  install_macvim \
  install_atom \
  install_janus \
  install_shellcheck \
  install_docker \
  install_terminal_notifier || exit $?

run_upgrades \
  git \
  screen \
  openssl \
  openssh \
  rsync || exit $?

