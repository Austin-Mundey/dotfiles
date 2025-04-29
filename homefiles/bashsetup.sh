#!/bin/bash

# Backup existing .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/.bash_aliases.backup
    
fi

# Create a symbolic link to the dotfiles repository
ln -s ~/dotfiles/homefiles/.bash_aliases ~/.bash_aliases

# Prompt user to reload bash configuration
read -p "Do you want to reload your Bash configuration now? (y/n): " choice
if [[ "$choice" =~ ^[Yy]$ ]]; then
    echo "Reloading Bash configuration."
    source ~/.bashrc
    echo "Bash configuration reloaded."
else
    echo "Remember to run 'source ~/.bashrc' manually to apply changes."
fi

