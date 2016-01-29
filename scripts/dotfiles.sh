#! /bin/zsh
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Checking if Homebrew is installed
if ! type -p brew > /dev/null ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/dotfiles/brew.sh)"
brew install wget	

# Fetching plist for iTerm 2 with themes and settings
wget -c https://raw.github.com/Croxed/osx-init/master/extras/com.googlecode.iterm2.plist -O /tmp/com.googlecode.iterm2.plist && 
rm -rf ~/Library/Preferences/com.googlecode.iterm2.plist
mv /tmp/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist &&
defaults read com.googlecode.iterm2 &&
open /Applications/iTerm.app

# Downloading oh-my-zsh
if [ ! -f "/tmp/oh-my-zsh.sh" ]
then
    (curl -LOk https://raw.github.com/Croxed/osx-init/master/scripts/oh-my-zsh.sh; mv oh-my-zsh.sh /tmp/oh-my-zsh.sh; sh /tmp/oh-my-zsh.sh & wait)
else
	sh /tmp/oh-my-zsh.sh & wait
fi
echo "Installing zsh-syntax-highlighting"
(wget -c https://raw.github.com/Croxed/osx-init/master/ZSH/.zshrc -O ~/.zshrc ; wget -c https://raw.github.com/Croxed/osx-init/master/ZSH/aliases.zsh -O ~/.oh-my-zsh/custom/aliases.zsh)
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/Croxed/osx-init/master/dotfiles/.osx)"
