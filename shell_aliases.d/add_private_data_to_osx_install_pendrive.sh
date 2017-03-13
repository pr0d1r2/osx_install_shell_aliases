# Add private files to existing OSX install pendrive.
# Fills up free space with encrypted image.
#
# Example usage:
# add_private_data_to_osx_install_pendrive pr0d1r2
function add_private_data_to_osx_install_pendrive() {
  local add_private_data_to_osx_install_pendrive_NAME
  local add_private_data_to_osx_install_pendrive_SIZE=`df -m "/Volumes/Install macOS Sierra" | tr -s " " | cut -f 4 -d " " | grep -v "^Available$"`
  if [ -z "$1" ]; then
    echo "add_private_data_to_osx_install_pendrive: please give name of image as first parameter!"
    return 8472
  fi
  for add_private_data_to_osx_install_pendrive_NAME in $@
  do
    if [ ! -f "/Volumes/Install macOS Sierra/$add_private_data_to_osx_install_pendrive_NAME.dmg" ]; then
      echorun hdiutil \
        create \
        -encryption AES-256 \
        -type UDIF \
        -nospotlight \
        -fs "Journaled HFS+" \
        -volname $add_private_data_to_osx_install_pendrive_NAME \
        -attach \
        -stdinpass \
        -megabytes $add_private_data_to_osx_install_pendrive_SIZE \
        "/Volumes/Install macOS Sierra/$add_private_data_to_osx_install_pendrive_NAME.dmg" || return $?
    fi
    if [ -d /Volumes/$add_private_data_to_osx_install_pendrive_NAME ]; then
      echorun rsync -av ~/.ssh/ /Volumes/$add_private_data_to_osx_install_pendrive_NAME/.ssh/ || return $?
      if [ -d ~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper/Data/Library/Backups ]; then
        echorun rsync -v \
          "`ls -d ~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper/Data/Library/Backups/* | tail -n 1`" \
          /Volumes/$add_private_data_to_osx_install_pendrive_NAME || return $?
      fi
    fi
  done
}
