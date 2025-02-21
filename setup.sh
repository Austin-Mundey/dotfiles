#!/bin/bash

# Define paths
VIMRC_SOURCE="$(pwd)/vim-config/.vimrc"
VIMRC_DEST="$HOME/.vimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

# Copy .vimrc to home directory
echo "Copying .vimrc to $HOME"
cp "$VIMRC_SOURCE" "$VIMRC_DEST"

# Install Vundle
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

# Install Vim plugin
echo "Installing Vim plugin"
vim +PluginInstall +qall

echo "Vim setup complete!"
