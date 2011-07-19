" As taken from: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" GRB: highlighting search
set hls

" highlight current line
set cursorline


" GRB: Put useful info in status line
set statusline=%<%f\ (%{&ft})%=%-19(%3l,%02c%03V%)
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red


set t_Co=256
colorscheme grb4
"set incsearch
set hlsearch
set number
set ruler
set showmatch
set noerrorbells
set ignorecase
