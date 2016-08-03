"""""""""""""""""""""""""""""""""""""""""""""""
" Plug (plugin manager by junegunn)
"""""""""""""""""""""""""""""""""""""""""""""""

" Begin loading plugins
call plug#begin ('~/.vim/plugged')

Plug 'scrooloose/nerdTree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'

" Add plugins to &runtimepath
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""
" Better editor configuration
"""""""""""""""""""""""""""""""""""""""""""""""

" Map "jk" to "escape" function
:imap jk <Esc>

" Set length before timout (e.g., when executing "jk")
:set timeoutlen=250

" Map Leader to space
let mapleader = " "

" Map Leader +s to ":w" 
nnoremap <Leader>s :w<CR>

" Map Leader +w to quit
nnoremap <Leader>w :q<CR>

" Map "Leader + bw" to close buffer
nnoremap <Leader>bw :Bdelete<CR>

" Add spaces around comment delimiters
let NERDSpaceDelims=1 

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Ignore the following files in NERDTree 
let NERDTreeIgnore = ['\.pyc$']
 
" Map :NERDTreeToggle to <Leader>n
nmap <silent> <Leader>n :NERDTreeToggle<CR>

