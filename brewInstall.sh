#! /bin/bash
echo "Updating Brew or installing if Homebrew doesn't exist" 
if ! type -p brew > /dev/null ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update && brew outdated && brew upgrade && brew cleanup
else
	echo "Brew already installed"
	brew update && brew outdated && brew upgrade && brew cleanup
fi