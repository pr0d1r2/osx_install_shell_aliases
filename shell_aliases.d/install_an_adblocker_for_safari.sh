function install_an_adblocker_for_safari() {
  if [ "$(defaults read loginwindow SystemVersionStampAsString | cut -f 2 -d .)" -ge 15 ]; then
    # "1Blocker for Safari" is the strongest according to the 'You may want to check' (2) link:
    mas install 1107421413 || return $?
  else
    echo "Apple disabled adBlockers on older systems!"
    echo "It will not install due to 'The current version requires OS X 10.15 or later, but you can download the last compatible version.'"
    echo "And then it fails with 'This redownload is not available for this Apple ID either because it was bought by a different user or the item was refunded or cancelled.'"
    echo
    echo "You may want to check:"
    echo "1) https://www.zdnet.com/article/apple-neutered-ad-blockers-in-safari-but-unlike-chrome-users-didnt-say-a-thing/"
    echo "2) https://imagazine.pl/2019/10/04/safari-13-0-niestety-uniemozliwia-korzystania-z-ublock-origin-oto-kilka-alternatyw/"
    echo "3) https://www.reddit.com/r/MacOS/comments/d6isg2/updated_to_safari_13_compatible_adblocker/"
    echo
  fi
}
