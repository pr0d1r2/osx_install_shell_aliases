function install_zsh() {
  brew install zsh || return $?
  test -d "$HOME/.oh-my-zsh" || sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || return $?
  if [ -x /opt/homebrew/bin/zsh ]; then
    echo /opt/homebrew/bin/zsh | sudo tee -a /etc/shells || return $?
  fi
  if [ -x /usr/local/bin/zsh ]; then
    echo /usr/local/bin/zsh | sudo tee -a /etc/shells || return $?
  fi
  if [ -x /opt/homebrew/bin/zsh ]; then
    chsh -s /opt/homebrew/bin/zsh || return $?
  else
    chsh -s /usr/local/bin/zsh || return $?
  fi
  if [ ! -d "$HOME/.oh-my-zsh/custom/pr0d1r2" ]; then
    git clone git@github.com:pr0d1r2/oh-my-zsh-custom.git "$HOME/.oh-my-zsh/custom/pr0d1r2" || return $?
  else
    cd  "$HOME/.oh-my-zsh/custom/pr0d1r2" || return $?
    git pull || return $?
  fi
  chmod -R go-rwxs "$HOME/.oh-my-zsh/custom/pr0d1r2" || return $?
  ln -s "$HOME/.oh-my-zsh/custom/pr0d1r2/zshrc.zsh"  "$HOME/.oh-my-zsh/custom/pr0d1r2.zsh" || return $?
  if [ ! -d "$HOME/.oh-my-zsh/spaceship-prompt" ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
  else
    cd "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
    git pull || return $?
  fi
  chmod -R go-rwxs "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
}
