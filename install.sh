#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
echo "Installing Xcode Command Line Tools"
xcode-select --install
sh QLPluginsInstaller.sh
sh dotfiles/brew.sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ZSH/.zshrc ~/.zshrc
cp ZSH/aliases.zsh ~/.oh-my-zsh/custom/
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sh dotfiles/.osx
brew install screenfetch
brew cask install iterm2
mkdir -p tempInstall
cd tempInstall
curl -LOk https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
mv Solarized%20Dark.itermcolors Solarized Dark.itermcolors
open Solarized Dark.itermcolors
cd ..
rm -rf tempInstall
zr