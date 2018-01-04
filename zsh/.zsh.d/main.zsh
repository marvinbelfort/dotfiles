# -*- mode: sh -*-

source ~/.zsh.d/constants.zsh
source ~/.zsh.d/envbootstrap.zsh
source ~/.zsh.d/options.zsh
source ~/.zsh.d/termcolors.zsh
source ~/.zsh.d/fixescapecodes.zsh
source ~/.zsh.d/zleconfig.zsh
source ~/.zsh.d/functions.zsh
source ~/.zsh.d/alias.zsh
source ~/.zsh.d/alias-git.zsh
source ~/.zsh.d/alias-dir.zsh
source ~/.zsh.d/alias-docker.zsh
source ~/.zsh.d/alias-pacman.zsh
source ~/.zsh.d/prompt.zsh
source ~/.zsh.d/plugins.zsh
source ~/.zsh.d/nin-vi-mode.zsh
source ~/.zsh.d/fzf.zsh

for file in $(find ~/.zsh.d/plugins | grep 'plugin\.zsh$')
do
  source $file
done

# init completion system
source ~/.zsh.d/completions.zsh

