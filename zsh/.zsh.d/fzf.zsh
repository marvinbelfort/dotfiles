source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -l -g "" 2>/dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND



