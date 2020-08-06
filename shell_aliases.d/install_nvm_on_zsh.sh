function install_nvm_on_zsh() {
  git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm || return $?
}
