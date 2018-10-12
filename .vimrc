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

"to use mouse
set mouse=a

"easier than \
let mapleader = " "

set history=200

"to search on recently opened files
nmap <leader>p :CtrlPBuffer<CR>

"to search on tags
nmap <leader>t :CtrlPTag<CR>

"disable automatic syntax checking after :w 
"it's because sometimes it's too slow
let g:syntastic_mode_map = {"mode": "passive",}

"highlight all occurrences when searching for a pattern
set hlsearch

"show tags of the file
nmap <F8> :TagbarToggle<CR>


call plug#begin('~/.vim/plugged')
" fancy tree
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
" FUzzy search
Plug 'kien/ctrlp.vim'
"Syntax checking
Plug 'scrooloose/syntastic'
" show all tags
Plug 'majutsushi/tagbar'
"comment several lines
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
"search
Plug 'mileszs/ack.vim'
"write todo files
Plug 'irrationalistic/vim-tasks'
"save tags automatically
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:ycm_python_binary_path = '/home/mehdi/miniconda2/envs/py35/bin/python'

let g:gutentags_file_list_command = 'find . -name "*.py"'
