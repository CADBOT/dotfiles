"""""""" Stuff for Vundle """"""""
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

filetype plugin indent on
""""""""""""""""""""""""""""""""""

"""""""" Rainbow parens config """
au VimEnter * RainbowParenthesesToggle
" Following two aren't working...
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
""""""""""""""""""""""""""""""""""

"""""""" Vim Settings """"""""""""

"""""""" Tab Stuff """""""""""""""
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

""""""""""""""""""""""""""""""""""
