"""""""" Stuff for Vundle """"""""
" Required for vundle to work
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
" required!
Bundle "gmarik/vundle"
Bundle 'scrooloose/nerdtree'
Bundle 'kien/rainbow_parentheses.vim'

filetype plugin indent on
""""""""""""""""""""""""""""""""""

"""""""" Rainbow parens config """
au VimEnter * RainbowParenthesesToggle
" Following two aren't working...
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
""""""""""""""""""""""""""""""""""
