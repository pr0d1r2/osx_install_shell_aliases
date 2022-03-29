function install_hammerspoon() {
  if [ ! -d $HOME/.hammerspoon ]; then
    git clone git@github.com:pr0d1r2/dothammerspoon.git $HOME/.hammerspoon || return $?
  else
    cd "$HOME/.hammerspoon" && git pull --rebase || return $?
  fi
  cd "$HOME/.hammerspoon" && git submodule update --init --recursive || return $?
  brew install --cask hammerspoon || return $?
  macos_autostart_app Hammerspoon 1
  open /Applications/Hammerspoon.app || return $?
}
