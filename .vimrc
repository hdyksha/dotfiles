" Use Vim settings
set nocompatible

" Enable filetype detection for loading plugin and indent settings
filetype plugin indent on

" Stop creating backup files
set nobackup

" Stop creating swap files
set noswapfile

" Use visualbell
set visualbell

if has('unix')
	set t_Co=256
	set background=dark
	set clipboard=unnamedplus
endif

if has('mac')
	set t_Co=256
	set background=dark
	set clipboard=unnamed,autoselect
endif

"--------------------------------------------------
" Editor view settings
"--------------------------------------------------

" Enable syntax highlight
syntax on

" Display row number
set number

" Highlight the cursor-line
set cursorline

" Show invisible characters
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"--------------------------------------------------
" Functional settings
"--------------------------------------------------

" Change backspace behavior for removing auto-indentation, eol, etc.
set backspace=indent,eol,start

" Automatically wrap left and right
set whichwrap=b,s,h,l,<,>,[,]

"--------------------------------------------------
" Netrw settings
"--------------------------------------------------

" Tree-style format
let g:netrw_liststyle=3

"--------------------------------------------------
" Indent settings
"--------------------------------------------------

set autoindent
set smartindent

" Set width of <Tab>
set tabstop=4

" Set width of white spaces with <tab> indentation
" softtabstop=tabstop if softtabstop=0
set softtabstop=0

" Width of white spaces with '<<'/'>>'/'==' indentation
set shiftwidth=4

" NOT insert white spaces instead of <Tab> insertion
set noexpandtab

"--------------------------------------------------
" Search settings
"--------------------------------------------------

" Highlight searched characters
set hlsearch

" Enable incremental search
set incsearch

"--------------------------------------------------
" Keymap settings
"--------------------------------------------------

let mapleader = " "

"
"" Normal mode
"

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <Leader>m :!make<CR><Esc>

"
"" Insert mode
"
"inoremap <C-Space> <C-p>
inoremap <silent> jj <ESC>
inoremap <C-j> <ESC>
inoremap <C-e> <END>
inoremap <C-a> <HOME>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
