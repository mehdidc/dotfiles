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

set history=200

"to search on recently opened files
nmap <leader>b :CtrlPBuffer<CR>

"to search on tags
nmap <leader>t :CtrlPTag<CR>

"disable automatic syntax checking after :w 
"it's because sometimes it's too slow
let g:syntastic_mode_map = {"mode": "passive"}

"highlight all occurrences when searching for a pattern
set hlsearch

"show tags of the file
nmap <F3> :TagbarToggle<CR>

"show tree
nmap <F2> :NERDTreeToggle<CR>

"check syntax
nmap <F5> :SyntasticCheck
let s:kite_auto_launched = 0

call plug#begin('~/.vim/plugged')
" fancy tree
Plug 'scrooloose/nerdtree'
" change text within a context (a string for instance)
Plug 'tpope/vim-surround'
" FUzzy search
Plug 'kien/ctrlp.vim'
"Syntax checking
Plug 'scrooloose/syntastic'
" show all tags
Plug 'majutsushi/tagbar'
"comment several lines
Plug 'scrooloose/nerdcommenter'
"search on files
Plug 'mileszs/ack.vim'
"write todo files
Plug 'irrationalistic/vim-tasks'
"save tags automatically
Plug 'ludovicchabant/vim-gutentags'
"autopep8
Plug 'tell-k/vim-autopep8'
"completion
Plug 'ycm-core/YouCompleteMe'
"Search
Plug 'rking/ag.vim'
call plug#end()


"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1
"let g:syntastic_python_checkers = ['flake8']
""ignore 80 line length
"let g:syntastic_python_flake8_args='--ignore=E501'
let g:gutentags_file_list_command = 'find . -name "*.py"'
let g:github_colors_soft = 1
"let g:jedi#completions_command = "<leader>c"
"let g:jedi#popup_on_dot = 1
"let g:ycm_python_interpreter_path = '/home/mehdi/.pyenv/shims/python'
let g:ycm_confirm_extra_conf = 0
let g:ycm_auto_trigger = 1
"let g:ycm_key_invoke_completion = '<leader>c'

" leader + right = follow tag, leader + left = go back
nnoremap <leader><right> <C-]>
nnoremap <leader><left> <C-T>
