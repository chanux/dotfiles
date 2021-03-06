filetype off	" required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
" required
Bundle 'gmarik/vundle'

" My bundles
Bundle 'Raimondi/delimitMate'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'ervandew/supertab'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'

" syntatstic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|so)$',
  \ }

" airline settings
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
