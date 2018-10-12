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
let mapleader = " "
set history=200
nmap <leader>p :CtrlPBuffer<CR>
nmap <leader>t :CtrlPTag<CR>
let g:syntastic_mode_map = {"mode": "passive",}

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'mileszs/ack.vim'
Plug 'irrationalistic/vim-tasks'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:ycm_python_binary_path = '/home/mehdi/miniconda2/envs/py35/bin/python'
