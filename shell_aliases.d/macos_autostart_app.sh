function macos_autostart_app() {
  local macos_autostart_app_HIDE
  macos_autostart_app_HIDE=$2
  if [ -z "$macos_autostart_app_HIDE" ]; then
    macos_autostart_app_HIDE=1
  fi
  defaults read loginwindow AutoLaunchedApplicationDictionary | \
    grep -q /Applications/$1.app || \
  defaults write loginwindow AutoLaunchedApplicationDictionary \
    -array-add "{ \"Path\" = \"/Applications/$1.app\"; \"Hide\" = $macos_autostart_app_HIDE; }"
  return $?
}
