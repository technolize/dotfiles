# peco.zsh

if exists peco; then
  function peco-select-history() {
    local tac
    exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
    BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
    CURSOR=$#BUFFER         # move cursor
    zle -R -c               # refresh
  }
  zle -N peco-select-history

  function peco-src() {
    local selected_dir=$(ghq list | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
      BUFFER="cd ${GOPATH}/src/${selected_dir}"
      zle accept-line
    fi
    zle clear-screen
  }
  zle -N peco-src
  stty -ixon

  function peco-pkill() {
    for pid in `ps aux | peco | awk '{ print $2 }'`
    do
      kill $pid
      echo "Killed ${pid}"
    done
  }
fi
