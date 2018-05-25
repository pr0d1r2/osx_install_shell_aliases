function macos_autostart_app() {
  local macos_autostart_app_HIDE
  macos_autostart_app_HIDE=$2

  case $2 in
    false | 0)
      macos_autostart_app_HIDE=false
      ;;
    *)
      macos_autostart_app_HIDE=true
      ;;
  esac

  osascript -e 'tell application "System Events" to get the name of every login item' | \
    egrep -q "^$1| $1, |^$1$" || \
  osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/$1.app\", hidden:$macos_autostart_app_HIDE}"

  return $?
}
