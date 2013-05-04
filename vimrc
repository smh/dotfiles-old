set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'ddollar/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vimwiki'
Bundle 'kien/ctrlp.vim'
Bundle 'skammer/vim-css-color'
Bundle 'mileszs/ack.vim'
Bundle 'rson/vim-conque'
Bundle 'skwp/vim-ruby-conque'
Bundle 'LustyJuggler'
Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
Bundle 'digitaltoad/vim-jade'
Bundle 'ledger/vim-ledger'

filetype plugin indent on

syntax on
set list
set number
set relativenumber
set nocompatible
set autoindent
set autowrite
set incsearch
set smartcase
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set laststatus=2
set lazyredraw
set backspace=2
set hlsearch

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
  "set listchars=tab:›,trail:·
  "let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &listchars = "tab:\u203a\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &fillchars = "vert:\u259a,fold:\u00b7"
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif

let mapleader = ","

map <leader>n :NERDTreeToggle<CR>
map <leader>v :vsplit<CR>
map <leader>h :split<CR>

map <leader>gs :Gstatus<CR>

set background=dark
let g:solarized_termcolors=16
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
color solarized

let g:ledger_fillstring = '·'

" powerline statusbar
set rtp+=/opt/boxen/homebrew/lib/python2.7/site-packages/powerline/bindings/vim
