" Vundle config

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"plugins vundle
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomlion/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of Vundle config

" Disable swap files
set nobackup
set noswapfile

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Line numbers
set number
set relativenumber

" Cursor behavior
set so=10

syntax on

colorscheme wombat256i

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Different colorscheme for vimdiff
if &diff
    highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
endif

" netrw configuration for project drawer style
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" vim-airline configuration for enhanced status line
set laststatus=2
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

" syntastic configuration for syntax highlighting
let syntastic_style_error_symbol = '✘'
let syntastic_style_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
let g:syntastic_check_on_open = 1

" removing grey highlight in the sign column
:hi clear SignColumn

" ycmd debugging
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
