#! /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles/brew.sh)"
mkdir -p tempInstall
cd tempInstall
brew install wget	
wget -c https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
if [ ! -f "Applications/iTerm.app" ]
then
	wget -c https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip
	unzip iTerm2-2_1_4.zip
	mv iTerm.app /Applications/
fi
open "Solarized Dark.itermcolors"
if [ ! -f "/tmp/oh-my-zsh.command" ]
then
	echo Hello
    (curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/oh-my-zsh.command; mv oh-my-zsh.command /tmp/oh-my-zsh.command; sudo open -W -a iTerm /tmp/oh-my-zsh.command)
else
	sudo open -W -a iTerm /tmp/oh-my-zsh.command
fi
cd ..
rm -rf tempInstall
echo "Installing zsh-syntax-highlighting"
(curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/.zshrc ; curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/aliases.zsh ; mv .zshrc ~/.zshrc; mv aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh)
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles/.osx)"