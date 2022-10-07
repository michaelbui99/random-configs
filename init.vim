" Sets
syntax on
set number
set relativenumber
set smartcase
set ignorecase
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set noerrorbells
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=100
set nowrap
set termguicolors

" Plugins
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Raimondi/delimitMate'
call plug#end()

" Theme
colorscheme nord

" Remaps
let mapleader=" "
nnoremap <C-n> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

