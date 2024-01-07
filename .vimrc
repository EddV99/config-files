"relative numbers
set relativenumber
set number

" 4 spaces 
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0

" cursor settings for normal and insert modes 
let &t_ti="\e[1 q"
let &t_SI="\e[5 q"
let &t_EI="\e[1 q"
let &t_te="\e[0 q"

" cursor update time
set ttimeout
set ttimeoutlen=1
set ttyfast

" Theme  
colorscheme elflord
syntax on
