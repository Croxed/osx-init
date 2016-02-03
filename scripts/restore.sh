#! /bin/bash

restore () {
	# Restoring .zshrc and aliases.zsh
	if [ -f ".zshrc" ] ; then
		mv .zshrc "$HOME/.zshrc"
	fi

	if [ -f "aliases.zsh" ] ; then
		mv aliases.zsh "$HOME/oh-my-zsh/custom/aliases.zsh"
	fi
}

confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:- Are you sure? y/N]} " response
    case $response in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

confirm "Do you want to restore to your old .zshrc and aliases.zsh? y/N" && restore