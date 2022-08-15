_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'

PROMPT=%F{33}${_newline}%~${_newline}'🚀 '%f
#PROMPT=${_newline}%~${_newline}'🚀 '
RPROMPT=%F{33}%{${_lineup}%}%D{'%F %a %T'}%{${_linedown}%}%f

alias la='ls -a'
alias ll='ls -l'
export CLICOLOR=1
alias tree='tree --dirsfirst -F'
alias tree1='tree --dirsfirst -F -L 1'
alias tree2='tree --dirsfirst -F -L 2'
alias tree3='tree --dirsfirst -F -L 3'
alias tree4='tree --dirsfirst -F -L 4'
alias tree5='tree --dirsfirst -F -L 5'
alias docker-compose='docker compose'

# go
export PATH=$PATH:/usr/local/go/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init --path)" 

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# poetry
export PATH="/home/alvaro/.local/bin:$PATH"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
