# Make the terminal pretty and such #
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Simple shit #
alias ls='ls -FhlG'
alias ..="cd .."
alias c="clear"

if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
fi
 
## Use a long listing format ##
alias ll='ls -la'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# do not delete / or prompt if deleting more than 3 files at a time #
#alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'


# Other shit #
alias wget='wget -c'
alias df='df -H'
alias du='du -ch'
alias ports='sudo lsof -iTCP -sTCP:LISTEN -P'

# To exit terminal
alias e='exit'

# See http://www.shellperson.net/using-sudo-with-an-alias/
alias sudo='sudo '

# This alias reloads this file
alias reload_profile='. ~/.bash_profile'

# Mac get stuck very often and are extremely slow and unstable on shutdowns. This forces a shutdown.
alias poweroff='sudo /sbin/shutdown -h now'

# To get my external IP
alias myip='curl icanhazip.com'

# Other IP / Method
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig en0 inet | grep 'inet ' | awk ' { print $2 } '"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush the dns cache #
alias flushdns='sudo killall -HUP mDNSResponder'

## Show & hide hidden files in finder ##
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Update system with all available updates #
alias sysupdate='sudo softwareupdate -iva'

# Edit this file (as I tend to do it quite often) #
alias editAlias='nano $ZSH_CUSTOM/aliases.zsh'

# Reload shell #
alias zr='source ~/.zshrc'

transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

c
screenfetch
