# -*- mode: sh -*-

# ls
alias ls='ls --color=auto --group-directories-first -X -I launchy.ini'
alias l='ls -lh'
alias la='l -A'
alias lk='k -A --no-vcs'
alias ld='lk -d'
alias lf='lk -n'

# quick alias
alias q='exit'
alias b='builtin cd ..'
alias w='echo -e "$Blue ${"$(pwd)"/$HOME/~} ${Red}at ${Cyan}$(whoami)${Red}@${Yellow}$(hostname -s)$Red using $Yellow${0}$Purple ${DOT_PROMPT_CHAR:-$}${Rst}"'
alias scroff='xset dpms force off'

# apps
alias ag='ag --hidden'
alias tarc='tar -zcvf file.tar.gz'
alias tarx='tar -zxvf'
alias cf='code $(fzf)'
alias vf='vim $(fzf)'
alias v='vim'
alias sv='sudoedit'
alias nj='~/Scripts/journal_create.sh'

# zsh config
alias re='exec zsh'
alias dot='la $(find ~ -maxdepth 1 -type l)'

# dotfiles
alias r='~/.dotfiles/install.zsh'

#xclip
alias xclip='xclip -selection clipboard '

#Title to x terminal
alias st=set_window_title
alias gradle='gradle --console rich '
