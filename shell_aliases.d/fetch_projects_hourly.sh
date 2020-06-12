function fetch_projects_hourly() {
  echo "#!/usr/bin/env bash" > "$HOME/.cron.d/hourly/fetch_projects.sh"
  echo 'find $HOME/projects -type d -depth 2 -name .git | parallel -v -j1 "cd {//} && git fetch"' >> "$HOME/.cron.d/hourly/fetch_projects.sh"
  chmod 700 "$HOME/.cron.d/hourly/fetch_projects.sh"
}
