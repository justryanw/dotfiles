let g:mapleader = "\<Space>"

syntax enable
set hidden
set pumheight=10															" Menu popup height
set iskeyword+=-															" Treat dash seperated words as a word text object
set expandtab																	" Converts tabs to spaces
set smartindent
set splitbelow																" Vertical splits split below
set splitright																" Horizontal splits split right
set laststatus=0															" Always display the status line
set number                                    " Show current line number
set relativenumber                            " Show relative line numbers
set noshowmode																" Removes statuses like -- INSERT --
set timeoutlen=500														" Time to wait for input after leader key
set clipboard=unnamedplus											" Set to use system clipboard
set cursorline																" Enable cursor line
" Set cursor line and column to highlight background
hi CursorLine term=none cterm=none ctermbg=235
" Stop newline continution of comments for all filetypes
autocmd FileType * setlocal formatoptions -=cro

