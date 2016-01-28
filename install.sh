#! /bin/bash
echo "These scripts will configure OS X with Homebrew and will also do some fine tuning to the OS"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/brewInstall.sh)"
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/QLPluginsInstaller.sh)"
if [ ! -f "/tmp/oh-my-zsh.command" ]
then
	echo Hello
    (curl -LOk https://raw.github.com/Croxed/OSX-Fresh-Install/master/oh-my-zsh.command; mv oh-my-zsh.command /tmp/oh-my-zsh.command; sudo open -W -a iTerm /tmp/oh-my-zsh.command)
else
	sudo open -W -a iTerm /tmp/oh-my-zsh.command
fi
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/dotfiles.sh)"