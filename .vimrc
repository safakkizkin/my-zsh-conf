" CALL
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'

Plug 'jeffkreeftmeijer/vim-numbertoggle'

Plug 'junegunn/vim-easy-align'

Plug 'itchyny/lightline.vim'

" Prettier 
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }

call plug#end()

" MAP
map <C-n> : NERDTreeToggle<CR>

" AUTOCMD 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" COLORSCHEME 
colorscheme gruvbox
set bg=dark

syntax on
filetype off
filetype plugin indent on

set nocompatible
set backspace=1
set modelines=0
set nowrap

set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8
" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Set Relative Number Plugin
set number rnu
