"FIRST do : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set autoindent
set nocindent
set nosmartindent
set indentexpr=
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on
set encoding=utf-8

"to use mouse
set mouse=a
"leader = space, easier to type than '\'
let mapleader = " "
set history=10000
"to search on recently opened files
set hlsearch
nmap <leader>p :FZF<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')
" fancy tree
Plug 'scrooloose/nerdtree'
" change text within a context (a string for instance)
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
"comment several lines
Plug 'scrooloose/nerdcommenter'
"search on files
Plug 'mileszs/ack.vim'
"save tags automatically
Plug 'ludovicchabant/vim-gutentags'
" fuzzy search
Plug 'junegunn/fzf'
" code analysis
Plug 'dense-analysis/ale'
" indent detection
Plug 'tpope/vim-sleuth'
" git intergration
Plug 'tpope/vim-fugitive'
" completion
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
call plug#end()
let g:gutentags_file_list_command = 'find . -name "*.py"'
let g:github_colors_soft = 1
" leader + right = follow tag, leader + left = go back
nnoremap <leader><right> <C-]>
nnoremap <leader><left> <C-T>
let g:one_allow_italics = 1
let b:ale_enabled = 0
let g:deoplete#enable_at_startup = 1
