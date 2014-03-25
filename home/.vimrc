"To compensante for fish being non-POSIX
set shell=sh
"""""""" Stuff for Vundle 
" Required for vundle to work
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat' 
Bundle 'Valloric/YouCompleteMe' 
Bundle 'tsaleh/vim-matchit'
Bundle 'dag/vim-fish'
Bundle 'scrooloose/syntastic'
Bundle 'jpalardy/vim-slime'
Bundle 'kien/ctrlp.vim'
"Bundle 'elzr/vim-json'

"Bundle 'scrooloose/syntastic' doesn't work with fish :/


filetype plugin indent on
""""""""""""""""""""""""""""""""""

"""""""" Rainbow parens config 
au VimEnter * RainbowParenthesesToggle
" Following two aren't working...
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
""""""""""""""""""""""""""""""""""

"""""""" NERDTree config *********
map <F2> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""

"""""""" ctrlp config ************
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" TODO maybe include wildignore stuff from ctrlp github page?

""""""""""""""""""""""""""""""""""


"""""""" vim-slime config ********

"Use tmux instead of screen
let g:slime_target = "tmux"

""""""""""""""""""""""""""""""""""

"""""""" Vim Settings 

"""""""" Tab Stuff 
"Tab is converted to 2 spaces
set softtabstop=2
set shiftwidth=2
set expandtab

"When looking at other code with 
"tabs, make it 4 cols
set tabstop=4
"Don't exand tabs for make files!
"also, rest the shift length and
"turn off soft tabs
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
""""""""""""""""""""""""""""""""""

" Just in case I might need it...
set nocompatible
" View line numbers
set number
" Show partial commands
set showcmd
" Ignore case for searching
set ignorecase
set nowrap
syntax on
" Make backspace work like it should
set backspace=indent,eol,start
" Make <F3> paste mode so I can paste code w/o indents
set pastetoggle=<F3>


" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" Fast saving and quiting
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
""""""""""""""""""""""""""""""""""
