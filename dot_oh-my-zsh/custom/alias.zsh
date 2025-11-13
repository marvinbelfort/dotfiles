# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
# 
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
# 
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
# 
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

alias wname='xprop | rg -e "^(WM_CLASS|WM_NAME)"'

alias ping='ping -c 3'

alias qtconsole='jupyter-qtconsole --style gruvbox-dark' 

alias pc='sudo pacman'

alias yay='yay --answerclean All --answerdiff None --answeredit None'

alias l='eza --group-directories-first -la --icons=auto -s extension'
alias ls='eza --group-directories-first --icons=auto -s extension' 
alias tree='eza -aT --icons=auto'
alias trgi='eza -aT --icons=auto --git-ignore'
alias cat='bat'

alias blendev='/usr/bin/blender -P /home/marvin/data/source/Blender/bootstrap_bpy_externall_server/bootstrap-listening.py'
alias p='cvlc --play-and-exit'
alias n='alacritty --working-directory "$(readlink -e /proc/"$(pgrep -oP "$(xdo pid)")"/cwd) &"'
alias ren='/usr/bin/vendor_perl/rename'
