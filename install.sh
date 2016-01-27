#! /bin/bash
echo "This scripts will configure OS X with Homebrew and will do some fine tuning to the OS"
echo "Installing Xcode Command Line Tools"
xcode-select --install
sh brewInstall.sh
sh QLPluginsInstaller.sh
#echo "Installing oh-my-zsh"
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#echo "Installing zsh-syntax-highlighting"
#git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#cp ZSH/.zshrc ~/.zshrc
#cp ZSH/aliases.zsh ~/.oh-my-zsh/custom/
#source ~/.zshrc
sh dotfiles.sh && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && cp ZSH/.zshrc ~/.zshrc && cp ZSH/aliases.zsh ~/.oh-my-zsh/custom/ && source ~/.zshrc