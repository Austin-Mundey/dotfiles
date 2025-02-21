#!/bin/bash

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"
VIMRC_SOURCE="$(pwd)/vim-config/.vimrc"
VIMRC_DEST="$HOME/.vimrc"

# Copy .vimrc to home directory
echo "Copying .vimrc to $HOME"
cp "$VIMRC_SOURCE" "$VIMRC_DEST"

# Install Vundle if not installed
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

# Install plugins
echo "Installing Vim plugins"
vim +PluginInstall +qall

echo "Setup complete!"
