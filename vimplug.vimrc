filetype off	" required

call plug#begin('~/.vim/plugged')

" My Plugs
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'hashivim/vim-terraform'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

call plug#end()

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|so)$',
  \ }

" airline settings
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" vim-go
let g:go_version_warning = 0

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ctrl-p open in tab on CR
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Ale settings
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
