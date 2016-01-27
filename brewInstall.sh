#! /bin/bash
echo "Updating Brew or installing if Homebrew doesn't exist" 
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update && brew outdated && brew upgrade && brew cleanup
else
	brew update && brew outdated && brew upgrade && brew cleanup
fi