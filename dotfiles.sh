#! /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/dotfiles/brew.sh)"
mkdir -p tempInstall
cd tempInstall
brew install wget	
if [ ! -f "Applications/iTerm.app" ]
then
	wget -c https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip
	unzip iTerm2-2_1_4.zip
	mv iTerm.app /Applications/
fi
curl -LOk -o ~/Library/Prefereces/com.googlecode.iterm2.plist https://raw.github.com/Croxed/osx-init/master/com.googlecode.iterm2.plist
if [ ! -f "/tmp/oh-my-zsh.command" ]
then
	echo Hello
    (curl -LOk https://raw.github.com/Croxed/osx-init/master/oh-my-zsh.command; mv oh-my-zsh.command /tmp/oh-my-zsh.command; sh /tmp/oh-my-zsh.command & wait)
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
