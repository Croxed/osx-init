#! /bin/bash
sh dotfiles/brew.sh 
mkdir -p tempInstall
cd tempInstall
brew instlal wget
wget -c https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
wget -c https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip
unzip iTerm2-2_1_4.zip
mv iTerm.app /Applications/
open Solarized Dark.itermcolors
cd ..
rm -rf tempInstall
sh dotfiles/.osx