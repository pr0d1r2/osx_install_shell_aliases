function link_projects_from_documents() {
  if [ ! -L ~/projects ]; then
    ln -s Documents/projects ~/projects || return $?
  fi
}
