syntax on
set background=dark
colorscheme nord

filetype on
filetype plugin on
filetype indent on

" Put swapfiles in /var/tmp
set directory=/var/tmp//

" Use space as leader
let mapleader="\<space>"

" Easy buffer navigation
nnoremap <leader>[ :bprevious<ENTER>
nnoremap <leader>] :bnext<ENTER>
nnoremap <leader>- :b#<ENTER>

" Disable the f*cking bell
set belloff=all

" Show trailing whitespace
set list
set listchars=tab:→\ ,trail:·

" gitgutter
set signcolumn=yes
set updatetime=500

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <leader><leader> :FZF<ENTER>

" Remap for split nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enough with the macros
nnoremap q <nop>

" Don't wrap lines
set nowrap

" Show line numbers
set number

" Highlight matching delimiters
set showmatch

" Highlight current line
set cursorline

" Scroll before getting to an edge
set scrolloff=3
set sidescrolloff=3
set sidescroll=1

" Better netrw defaults
let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_list_hide="node_modules,\.git,\.DS_Store"
nnoremap <leader>\ :Lexplore<ENTER>

" Enhance tab completion
set wildmenu
set wildignore+=node_modules/*
set wildignore+=*.swp,*.lock
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.woff,*.woff2,*.eot,*.ttf

" Ignore case in pattern matching
set ignorecase

" Convert tabs to spaces
set expandtab
set softtabstop=2
set tabstop=2

" Indent by 2, evenly
set shiftwidth=2
set shiftround

" Set matching indenation on newlines
set autoindent
set smartindent

" Allow backspace in insert mode
set backspace=indent,eol,start

" Always show status line
set laststatus=2
set statusline=%F\%=Ln\ %l\ Col\ %c

" Open splits to right and bottom
set splitbelow
set splitright

" Let me leave unwritten buffers
set hidden

" Read in external changes automatically
set autoread

" Show commands as they're typed
set showcmd

" Install vim-plug packages
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
call plug#end()
