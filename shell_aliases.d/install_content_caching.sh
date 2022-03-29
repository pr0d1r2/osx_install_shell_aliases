defaults read loginwindow SystemVersionStampAsString# Enables:
# System Preferences => Sharing => Content Caching
function install_content_caching() {
  # For systems older than High Sierra (10.13) we need to install Mac OS Server
  if [ "$(defaults read loginwindow SystemVersionStampAsString | cut -f 1 -d .)" -eq 10 ]; then
    if [ "$(defaults read loginwindow SystemVersionStampAsString | cut -f 2 -d .)" -lt 13 ]; then
      # 883878097  macOS Server (5.10)
      mas install 883878097 || return $?
    fi
  elif [ "$(defaults read loginwindow SystemVersionStampAsString | cut -f 1 -d .)" -lt 10 ]; then
    # 883878097  macOS Server (5.10)
    mas install 883878097 || return $?
  fi
  AssetCacheManagerUtil isActivated &>/dev/null || sudo AssetCacheManagerUtil activate || return $?
}
