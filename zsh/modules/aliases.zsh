# zshrc.aliases

alias brew='nocorrect brew'
alias git='nocorrect git'

alias ls='ls -Fhv --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ll -a'

alias ack=pt
alias ag=pt

alias grep='grep --color=always'

alias c=clear
alias q=exit

alias pcat='pygmentize -O tabsize=4'

alias ssh='TERM=xterm-256color ssh'

alias timestamp='date '+%s''

alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'

alias -g G="| grep"
alias -g L="| less"
alias -g P="| peco"

alias -g ...='../..'

alias -g T="| tee -i"

