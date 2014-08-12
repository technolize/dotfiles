# zshrc.extensions

if [[ -d ~/.zsh/zjump ]]; then
  _Z_CMD=j
  source ~/.zsh/zjump/z.sh
else
  echo "[Warning] z is not installed" 1>&2
fi

eval "$(direnv hook zsh)"

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

