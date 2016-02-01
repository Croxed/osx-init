#! /bin/bash
if [ -f ".zshrc"] ; then
	mv .zshrc ~/.zshrc
fi

if [ -f "aliases.zsh"] ; then
	mv aliases.zsh ~/oh-my-zsh/custom/aliases.zsh
fi