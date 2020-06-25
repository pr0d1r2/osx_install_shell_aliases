function install_mas() {
  case "$(defaults read loginwindow SystemVersionStampAsString | cut -f 1-2 -d .)" in
    "10.13")
      if ! (test -d /Applications/Xcode.app); then
        echo "Please:"
        echo "- Update your macOS to 10.13.6"
        echo "- install XCode 10.2.1 according to: https://codewithchris.com/xcode-update/"
        return 1
      fi
      # Check https://stackoverflow.com/questions/40743713/command-line-tool-error-xcrun-error-unable-to-find-utility-xcodebuild-n
      sudo xcode-select -s /Applications/Xcode.app/Contents/Developer || return $?
      ;;
  esac
  brew install mas || return $?
}
