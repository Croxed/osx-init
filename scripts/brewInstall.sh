#! /bin/bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Xcode Command Line Tools"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/scripts/xcode-cli-install.sh)"
echo "Updating Brew or installing if Homebrew doesn't exist" 
if ! type -p brew > /dev/null ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update && brew outdated && brew upgrade && brew cleanup
else
	echo "Brew already installed"
	brew update && brew outdated && brew upgrade && brew cleanup
fi