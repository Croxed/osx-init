#! /bin/bash
sh dotfiles/brew.sh
mkdir -p tempInstall
cd tempInstall
brew install wget	
wget -c https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
wget -c https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip
unzip iTerm2-2_1_4.zip
mv iTerm.app /Applications/
open "Solarized Dark.itermcolors"
cd ..
rm -rf tempInstall
(chmod +x oh-my-zsh.commad ; open oh-my-zsh.command & wait)
echo "Installing zsh-syntax-highlighting"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
(cp ZSH/.zshrc ~/.zshrc ; cp ZSH/aliases.zsh ~/.oh-my-zsh/custom/ ; source ~/.zshrc)
sh dotfiles/.osx