set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vimwiki'
Plugin 'kien/ctrlp.vim'
"Plugin 'skammer/vim-css-color' " causing slow loading of html files
Plugin 'mileszs/ack.vim'
Plugin 'basepi/vim-conque'
Plugin 'skwp/vim-ruby-conque'
Plugin 'LustyJuggler'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'digitaltoad/vim-jade'
Plugin 'ledger/vim-ledger'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
au BufNewFile,BufRead *.json setf json
Plugin 'editorconfig/editorconfig'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

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
map <leader>m :TagbarToggle<CR>

map <leader>gs :Gstatus<CR>

map <D-/> :NERDComInvertComment<CR>

set background=dark
let g:solarized_termcolors=16
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
color solarized

set foldmethod=syntax
"set foldlevelstart=1
autocmd Syntax javascript,json,c,java,ruby,python,clojure normal zR

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['foo', 'bar'],
                           \ 'passive_filetypes': ['java'] }

"au FileType javascript call JavaScriptFold()

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute "]
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:ledger_fillstring = '·'

let g:airline_powerline_fonts = 1
" powerline statusbar
"set rtp+=/opt/boxen/homebrew/lib/python2.7/site-packages/powerline/bindings/vim
""execute pathogen#infect()
