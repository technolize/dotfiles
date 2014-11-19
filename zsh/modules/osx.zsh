# zshrc.osx

## path
path=(
  $HOME/bin(N-/)
  $HOME/.cabal/bin(N-/)
  $HOME/.phpenv/bin(N-/)
  $HOME/.composer/vendor/bin(N-/)
  /usr/local/opt/go/libexec/bin(N-/)
  /usr/local/heroku/bin(N-/)
  /usr/local/share/npm/bin(N-/)
  /usr/local/opt/ruby/bin(N-/)
  /usr/local/opt/coreutils/libexec/gnubin(N-/)
  $path
)

## aliases
alias rm=rmtrash
alias here='open .'
alias -g C='| nkf -w | pbcopy'

alias chrome='open -a "Google Chrome"'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias mvim='/Applications/MacVim.app/Contents/MacOS/mvim'

export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer

## add coreutils manual to manpath
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# set pbcopy text encoding to UTF-8
export __CF_USER_TEXT_ENCODING=0x1F6:0x08000100:14

# ignore resource fork
export COPYFILE_DISABLE=1
export COPY_EXTENDED_ATTRIBUTES_DISABLE=1

## node
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

## android sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

