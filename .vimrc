"FIRST do : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set autoindent
set nocindent
set nosmartindent
set autoindent
set indentexpr=
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on
set encoding=utf-8
set mouse=a
set textwidth=80
let mapleader = " "
set history=200

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'rking/ag.vim'
Plug 'craigemery/vim-autotag'
Plug 'irrationalistic/vim-tasks'
call plug#end()

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:ycm_python_binary_path = '/home/mehdi/miniconda2/envs/py35/bin/python'
