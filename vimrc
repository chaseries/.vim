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
Plug 'neovimhaskell/haskell-vim'
Plug 'ElmCast/elm-vim'

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

" Map Leader +ww to force quit
nnoremap <Leader>ww :q!<CR>

"  Map "Leader + b" to go to next buffer
nnoremap <Leader>b :bn<CR>

" Map "Leader + bw" to close buffer
nnoremap <Leader>bw :bd<CR>

" Get rid of annoying "~" file
:set nobackup

" Set relative line numbers...
:set rnu

" ...But also display the current line number
:set number
"
" Show the status bar always
:set laststatus=2

" Expand tab to spaces
:set expandtab

" Set the number of spaces that a tab counts for 
:set tabstop=2

" Set shiftwidth
:set shiftwidth=2

" Force tabstops for Python
au FileType python setl expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Force tabstop for Haskell
au FileType haskell setl expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Fix backspacing so that it deletes a line
set backspace=indent,eol,start

" Create persistent undo history
:set undofile
:set undodir=$HOME/.vim/undo
:set undolevels=1000
:set undoreload=10000

" Set case-insensitive regex search, but trump case-insensitivity 
" if uppercase is used
:set ignorecase
:set smartcase

" Try and set smart indentation based on filetype
" I'm not totally sure how this works, and I don't have the ambition to figure
" it out right now.
:filetype plugin on
:filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX & COLOR ELEMENTS
"""""""""""""""""""""""""""""""""""""""""""""""

" Turn syntax highlighting on
syntax on

" Set terminal to 256 colors, if supported
if $TERM == "xterm-256color"
  set t_Co=256
endif

" Set color scheme
color highfructose

"""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings
"""""""""""""""""""""""""""""""""""""""""""""""

" Add spaces around comment delimiters
let NERDSpaceDelims=1 

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Ignore the following files in NERDTree 
let NERDTreeIgnore = ['\.pyc$']
 
" Map :NERDTreeToggle to <Leader>n
nmap <silent> <Leader>n :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" elm-vim settings
"""""""""""""""""""""""""""""""""""""""""""""""

let g:elm_setup_keybindings = 0

"""""""""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors settings 
"""""""""""""""""""""""""""""""""""""""""""""""

let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""
" Add cool GUI-like indicator for insert mode 
"""""""""""""""""""""""""""""""""""""""""""""""

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=green
    hi statusline ctermbg=5f00ff
  elseif a:mode == 'v'
    hi statusline guibg=red
    hi statusline ctermbg=red
  else
    hi statusline guibg=black
    hi statusline ctermbg=000000
  endif
endfunction

au InsertEnter  * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave  * hi   statusline guibg=black 
au InsertLeave  * hi   statusline ctermbg=000000 
