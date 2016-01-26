ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"


export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"

plugins=(brew cake colorize coffee web-search encode64 gem git osx rails rvm sublime ruby github node npm zsh-syntax-highlighting vagrant colored-man)

source $ZSH/oh-my-zsh.sh

export PATH=/opt/vagrant/bin:/Applications/Postgres.app/Contents/MacOS/bin:$HOME/.rvm/bin:/$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/X11/bin:$PATH