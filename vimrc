source $HOME/.vimplug.vimrc    "Setting up vimplug

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
set shell=/bin/sh
set fileformats=unix
set ff=unix
set laststatus=2
colorscheme zenburn

" Space is the leader. This is super convenient.
let mapleader="\<Space>"
nnoremap <SPACE> <Nop>

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
set colorcolumn=80

set pastetoggle=<F2>         " For when you want to paste loads of text

" Toggle line numbers
:nmap <C-N><C-N> :set invnumber<CR>

" cleanup highlighted searches
nmap <silent> ,/ :nohlsearch<CR>

nnoremap <tab> %
vnoremap <tab> %

" No more F1 bullshit
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" jk is Escape
inoremap jk <ESC>

"  backup
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                       " enable backups

set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
" set viminfo='100,f1

" FTDETECTAUTO commands
autocmd BufRead,BufNewFile *.md set filetype=mkd " Recognize .md as markdown files (Vim default is .mkd)

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Save when losing focus
au FocusLost * :wa

" cleanup trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Easily split window
nnoremap <leader>w <C-w>v<C-w>l

" Disabling arrow keys ^_^
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Buffer related bindings
" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Indent with tabs. Align with spaces
" PHP
autocmd FileType php setlocal autoindent noexpandtab shiftwidth=4 tabstop=4

" set json fieltype
autocmd BufNewFile,BufRead *.json set ft=json

" For YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldlevelstart=20

" Black for Python fmt
function! BlackFmt()
    let save_pos = getpos(".")
    %!black --quiet -
    call setpos(".", save_pos)
endfunction
command! BlackFmt call BlackFmt()

" Use jq formatting json
function! JqFmt()
    let save_pos = getpos(".")
    %!jq
    call setpos(".", save_pos)
endfunction
command! JqFmt call JqFmt()
