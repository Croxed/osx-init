#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
echo "Installing Xcode Command Line Tools"
check=$(((xcode-select --install) 2>&1))
echo $check
str="xcode-select: note: install requested for command line developer tools"
while [[ "$check" == "$str" ]];
do
  osascript -e 'tell app "System Events" to display dialog "xcode command-line tools missing." buttons "OK" default button 1 with title "xcode command-line tools"'
  exit;  
done

sh brewInstall.sh
sh QLPluginsInstaller.sh
sh dotfiles.sh