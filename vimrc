"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" PLUG (PLUGIN MANAGER BY junegunn) PLUG (PLUGIN MANAGER BY junegunn) PLUG (PL "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

" Begin loading plugins
call plug#begin ('~/.vim/plugged')

Plug 'posva/vim-vue'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdTree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'raichoo/haskell-vim'
Plug 'ElmCast/elm-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'cakebaker/scss-syntax.vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'leafgarland/typescript-vim'

" Add plugins to &runtimepath
call plug#end()


autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
 
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" STOCK IMPROVEMENTS  STOCK IMPROVEMENTS  STOCK IMPROVEMENTS  STOCK IMPROVEMEN "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

" Map "jk" to "escape" function
:imap jk <Esc>

" Remap  these keys because it's just too much of a pain to stretch my fingers
:nnoremap L $
:nnoremap H 0
:nnoremap K gg
:nnoremap J G

" And remap these so I can do Emacs-style line jumping in insert mode
:inoremap <C-e> <C-o>$
:inoremap <C-a> <C-o>0

" Set commands to yank/paste to and from clipboard (vim-gkt only)
vmap <Leader>y "+y
vmap <Leader>p "+p


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

" Set bottom right-hand line and column number view
:set ruler

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


"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" SYNTAX & COLOR SYNTAX & COLOR SYNTAX & COLOR SYNTAX & COLOR SYNTAX & COLOR S "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

nnoremap <Leader>r :syn sync fromstart<CR>

" Turn syntax highlighting on
syntax on

" Set terminal to 256 colors, if supported
if $TERM == "xterm-256color"
  set t_Co=256
endif

" Set color scheme
color highfructose

" Create a command that lets syntax highlighting resync


"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" NERDTREE SETTINGS NERDTREE SETTINGS NERDTREE SETTINGS NERDTREE SETTINGS NERD "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

" Add spaces around comment delimiters
let NERDSpaceDelims=1 

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Ignore the following files in NERDTree 
let NERDTreeIgnore = ['\.pyc$', '\.swp$']
 
" Map :NERDTreeToggle to <Leader>n
nmap <silent> <Leader>n :NERDTreeToggle<CR>

"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" ELM-VIM SETTINGS  ELM-VIM SETTINGS  ELM-VIM SETTINGS  ELM-VIM SETTINGS  ELM- "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

let g:elm_setup_keybindings = 0


"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" VIM-MULTIPLE-CURSOR SETTINGS VIM-MULTIPLE-CURSOR SETTINGS VIM-MULTIPLE-CURSO "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

let g:multi_cursor_quit_key='<Esc>'


"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$
" COOL GUI-LIKE STATUS LINE COOL GUI-LIKE STATUS LINE COOL GUI-LIKE STATUS LIN "
"$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$

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


" Syntastic stuff
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let syntastic_mode_map = { 'passive_filetypes': ['html']  }

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']


