set nocompatible              " Required
filetype off                  " Required

" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin list
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " Required
filetype plugin indent on    " Required

" Load Jellybeans Color Scheme
colorscheme jellybeans
