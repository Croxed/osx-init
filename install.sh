#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
sh QLPluginsInstaller.sh
sh dotfiles/.osx
sh dotfiles/brew.sh
sudo xcodebuild -license