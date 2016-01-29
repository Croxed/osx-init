#! /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/dotfiles/brew.sh)"
mkdir -p tempInstall
cd tempInstall
	brew install wget	
	wget -c https://raw.github.com/Croxed/osx-init/master/extras/com.googlecode.iterm2.plist && 
	rm -rf ~/Library/Preferences/com.googlecode.iterm2.plist && 
	mv com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist &&
	defaults read com.googlecode.iterm2 &&
	open /Applications/iTerm.app
	if [ ! -f "/tmp/oh-my-zsh.command" ]
	then
	    (curl -LOk https://raw.github.com/Croxed/osx-init/master/scripts/oh-my-zsh.command; mv oh-my-zsh.command /tmp/oh-my-zsh.command; sh /tmp/oh-my-zsh.command & wait)
	else
		sh /tmp/oh-my-zsh.command & wait
	fi
cd ..
rm -rf tempInstall
echo "Installing zsh-syntax-highlighting"
(curl -LOk https://raw.github.com/Croxed/osx-init/master/ZSH/.zshrc ; curl -LOk https://raw.github.com/Croxed/osx-init/master/ZSH/aliases.zsh ; mv .zshrc ~/.zshrc; mv aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh)
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/dotfiles/.osx)"
