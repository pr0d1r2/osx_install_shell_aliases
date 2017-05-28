function install_font_microsoft() {
  brew tap pr0d1r2/fonts-nonfree || return $?
  brew cask install font-microsoft-office || return $?
}
