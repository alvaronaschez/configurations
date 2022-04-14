_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'

PROMPT=${_newline}%~${_newline}'🚀 '
RPROMPT=%{${_lineup}%}%D{'%F %a %T'}%{${_linedown}%}

alias la='ls -a'
alias ll='ls -l'
export CLICOLOR=1
alias tree='tree --dirsfirst -F'
alias tree1='tree --dirsfirst -F -L 1'
alias tree2='tree --dirsfirst -F -L 2'
alias tree3='tree --dirsfirst -F -L 3'
alias tree4='tree --dirsfirst -F -L 4'
alias tree5='tree --dirsfirst -F -L 5'

# pyenv
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init --path)" 

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

