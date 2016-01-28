#! /bin/bash

closeWindow() {
    /usr/bin/osascript << _OSACLOSE_
	delay 3.0
    tell application "Terminal"
        close (every window whose name contains "oh-my-zsh")
    end tell
_OSACLOSE_
}

sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/brew.sh)"
mkdir -p tempInstall
cd tempInstall
brew install wget	
wget -c https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
wget -c https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip
unzip iTerm2-2_1_4.zip
mv iTerm.app /Applications/
open "Solarized Dark.itermcolors"
if [ ! -f "/tmp/oh-my-zsh.command" ]
then
    curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/oh-my-zsh.command
fi
mv oh-my-zsh.command /tmp/oh-my-zsh.command
chmod +x /tmp/oh-my-zsh.command
(open /tmp/oh-my-zsh.command && closeWindow ; curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/.zshrc ; curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/aliases.zsh ; source ~/.zshrc)
(mv .zshrc ~/.zshrc; mv aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh)
cd ..
rm -rf tempInstall
echo "Installing zsh-syntax-highlighting"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles/.osx)"
