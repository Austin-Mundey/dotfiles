#!/bin/bash

# This script sets up Vim by:
# 1. Copying a custom .vimrc configuration file to the user's home directory
# 2. Installing the Vundle plugin manager (if not already installed)
# 3. Installing Vim plugins specified in the .vimrc file


# Define paths
VIMRC_SOURCE="$(pwd)/vim-config/.vimrc"
VIMRC_DEST="$HOME/.vimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

# Copy .vimrc to home the user's home directory
echo "Copying .vimrc to $HOME"
cp "$VIMRC_SOURCE" "$VIMRC_DEST"

# Install Vundle if it is not already installed
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

# Install all Vim plugins
echo "Installing Vim plugin"
vim +PluginInstall +qall

echo "Vim setup complete!"
