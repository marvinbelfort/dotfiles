
__filter_target(){
      if [[ -e $target ]]; then
        target=$(readlink -f $target)
        if [[ -d $target ]]; then
          target="$target/"
        fi
        target=${target#$git_root}
        if [[ -n $target ]]; then
          ignored+=($target)
        fi
      fi
}

git_ignore(){

  local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
  if [[ -z $git_root ]]; then
    echo "Not a git repo!"
    return
  fi

  git_root="$git_root/"

  local ignored=()

  if [ $# -eq 0 ]; then
    target=$(pwd)
    if [[ "$target" != $git_root ]]; then
      __filter_target
    fi
  else
    for target in $@
    do
      __filter_target
    done
  fi
  if [[  ${#ignored[@]} -gt 0 ]]; then
    gitignore="$git_root/.gitignore"
    echo "Adding following files to .gitignore:"
    printf "\t%s\n" "${ignored[@]}" 
    printf "%s\n" "${ignored[@]}" >> $gitignore
    sort -u $gitignore -o $gitignore 
  fi
}


alias gig='git_ignore'


