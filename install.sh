#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
echo "Installing Xcode Command Line Tools"
xcode-select --install
sh brewInstall.sh
sh QLPluginsInstaller.sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
mkdir -p tempInstall
cd tempInstall
brew install wget
wget -C https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
open Solarized Dark.itermcolors
cd ..
rm -rf tempInstall
cp ZSH/.zshrc ~/.zshrc
cp ZSH/aliases.zsh ~/.oh-my-zsh/custom/
source ~/.zshrc
sh dotfiles.sh