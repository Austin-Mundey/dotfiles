#!/bin/bash

# Backup existing .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/.bash_aliases.backup
    
fi

# Create a symbolic link to the dotfiles repository
ln -s ~/dotfiles/homefiles/.bash_aliases ~/.bash_aliases


source ~/.bashrc
