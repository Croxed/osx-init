#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
echo "Installing Xcode Command Line Tools"
sh xcode-cli-install.sh
sh brewInstall.sh
sh QLPluginsInstaller.sh
sh dotfiles.sh