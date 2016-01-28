#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/brewInstall.sh)"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/QLPluginsInstaller.sh)"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles.sh)"