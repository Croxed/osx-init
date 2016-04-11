#! /bin/bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing zgen" 
cd ~
git clone https://github.com/tarjoilija/zgen.git
git clone https://github.com/unixorn/zsh-quickstart-kit.git
cd zsh-quickstart-kit
stow --target="$HOME" zsh
sudo sed -i -e '$a /usr/local/bin/zsh' /etc/shells
chsh -s /usr/local/bin/zsh