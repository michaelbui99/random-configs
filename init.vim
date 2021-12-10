" --- General
" enables syntax highlighting
syntax on
" number of spaces in a <Tab>
set tabstop=4 
set softtabstop=4
set expandtab 

" number of spaces used for autoindents
set shiftwidth=4

" enable auto indents
set smartindent

" enables line numbers
set number

" columnes used for line numbers
set numberwidth=4 
set relativenumber
set encoding=UTF-8
"highlights the matched text pattern when searching
set incsearch
set nohlsearch 

" open splits intuitively
set splitbelow
set splitright

"enable mouse support
set mouse=a

" case insensitive search unless capital letters are used 
set ignorecase 
set smartcase


" --- Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'navarasu/onedark.nvim'

call plug#end()

" --- Colors
let g:onedark_style = 'darker'
colorscheme onedark
