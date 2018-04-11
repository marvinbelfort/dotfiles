
#Put dir/file names in a proper format
__format_target(){
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

#add parameters to current git repo gitignore
git_ignore(){

  local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
  if [[ -z $git_root ]]; then
    echo "Not a git repo!"
    return
  fi

  git_root="$git_root/"

  local ignored=()

  #When calling without parameters, just add current dir
  if [ $# -eq 0 ]; then
    target=$(pwd)
    if [[ "$target" != $git_root ]]; then
      __format_target
    fi
  else
    for target in $@
    do
      __format_target
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


