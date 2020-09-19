_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'

PROMPT=${_newline}%~${_newline}'🚀 '
RPROMPT=%{${_lineup}%}%D{'%F %a %T'}%{${_linedown}%}

export CLICOLOR=1
alias tree='tree --dirsfirst -F'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/alvarosanchezpalomino/.sdkman"
[[ -s "/Users/alvarosanchezpalomino/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/alvarosanchezpalomino/.sdkman/bin/sdkman-init.sh"
