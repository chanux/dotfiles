filetype off	" required

call plug#begin('~/.vim/plugged')

" My Plugs
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'elzr/vim-json'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" syntatstic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_go_checkers = ['go']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['eslint']

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
