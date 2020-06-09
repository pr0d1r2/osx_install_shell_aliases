function install_an_tracking_blocker_for_safari() {
  # Rationale: https://imagazine.pl/2019/10/04/safari-13-0-niestety-uniemozliwia-korzystania-z-ublock-origin-oto-kilka-alternatyw/
  # 1436953057  Ghostery Lite                  (1.1.0)
  mas install 1436953057 || return $?
}
