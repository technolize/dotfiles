# keybinding.zsh

bindkey "^@" set-mark-command
bindkey "^A" beginning-of-line
bindkey "^X" backward-char
bindkey "^E" end-of-line
bindkey "^U" forward-char
bindkey "^D" backward-delete-char
bindkey "^C" expand-or-complete
bindkey "^N" kill-line
bindkey "^S" clear-screen
bindkey "^M" accept-line
bindkey "^B" down-line-or-history
bindkey "^R" accept-line-and-down-history
bindkey "^L" up-line-or-history
bindkey "^'" push-line
bindkey "^P" history-incremental-search-backward
bindkey "^O" history-incremental-search-forward
bindkey "^Y" transpose-chars
bindkey "^G" kill-whole-line
bindkey "^J" quoted-insert
bindkey "^<" backward-kill-word

bindkey -s ':q' "^A^Kexit\n"

bindkey '^Xh' _complete_help

bindkey '^s' peco-src
bindkey '^R' peco-select-history

