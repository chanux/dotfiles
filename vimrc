filetype off	" required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
" required
Bundle 'gmarik/vundle'

" My bundles here
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'

syntax on
filetype plugin indent on

set nocompatible              " vim, not vi
set encoding=utf-8
set background=dark
set more                      " use more prompt
set autoread                  " watch for file changes
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set autoindent smartindent    " auto/smart indent
set ruler                     " show the line number on the bar
set relativenumber
set showmode
set showcmd
set hidden
set wildmode=longest:full
set wildmenu                  " menu has tab completion
set cursorline                " Highlight the line cursor is at
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set undofile
set undolevels=1000           " 1000 undos
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set visualbell
set shell=bash
set fileformats=unix
set ff=unix
set laststatus=2
let mapleader=','
colorscheme zenburn

" Tab settings
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 4 spaces
set softtabstop=4             " Backspace treats 4 psaces as a tab
set shiftwidth=4
set expandtab

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set smartcase                 " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

" Handling long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Cleanup search dirt when you are done searching
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

" No more F1 bullshit
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"  backup
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                       " enable backups

set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
" set viminfo='100,f1

" FTDETECTAUTO COMANDS
autocmd BufRead,BufNewFile *.md set filetype=mkd " Recognize .md as markdown files (Vim default is .mkd)

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Save when losing focus
au FocusLost * :wa

" cleanup trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Easily split window
nnoremap <leader>w <C-w>v<C-w>l

" syntatstic settings
let g:syntastic_python_checkers = ['flake8']

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|so)$',
  \ }
