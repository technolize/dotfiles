# zshrc.core

limit coredumpsize 0
limit stacksize 2048k
umask 022

WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
LISTMAX=0

## keyboard
bindkey -e
setopt dvorak

## options
setopt always_last_prompt
setopt autolist
setopt auto_menu
setopt correct
setopt correct_all
setopt list_packed
setopt long_list_jobs
setopt nolistbeep
setopt no_beep
setopt combining_chars
setopt print_eightbit
setopt prompt_subst
setopt no_flow_control
setopt short_loops
setopt bg_nice
setopt notify
setopt check_jobs
setopt transient_rprompt
setopt prompt_cr
setopt ignoreeof

## directory
setopt auto_cd
setopt auto_name_dirs
setopt auto_remove_slash
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_minus

## history
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=100000

setopt hist_expand
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
autoload colors; colors

## completion
setopt completealiases

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit; compinit -u

zstyle ':completion:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '[%s(%b)]'
zstyle ':vcs_info:*' actionformats '[%s(%b|%a)]'

compdef mosh=ssh

