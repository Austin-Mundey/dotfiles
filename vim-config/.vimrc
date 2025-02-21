set nocompatible              " Required
filetype off                  " Required

" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin list
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'

set laststatus=2

call vundle#end()            " Required
filetype plugin indent on    " Required


" Load Jellybeans Color Scheme
colorscheme jellybeans
