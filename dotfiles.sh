#! /bin/bash
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles/brew.sh)"
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
    wget -O /tmp/oh-my-zsh.command https://raw.github.com/Croxed/OSX-Fresh-Install/master/oh-my-zsh.command
fi
chmod +x /tmp/oh-my-zsh.command
open /tmp/oh-my-zsh.command
cd ..
rm -rf tempInstall
echo "Installing zsh-syntax-highlighting"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
(curl -o ~/.zshrc https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/.zshrc ; curl -o  ~/.oh-my-zsh/custom/aliases.zsh https://raw.github.com/Croxed/OSX-Fresh-Install/master/ZSH/aliases.zsh ; source ~/.zshrc)
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles/.osx)"