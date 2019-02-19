# Facebook Messenger client
function install_goofy() {
  brew cask install goofy || return $?
  open /Applications/Goofy.app || return $?
}
