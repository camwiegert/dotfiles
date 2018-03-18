syntax on
set background=dark
colorscheme nord

" Put swapfiles in /var/tmp
set directory=/var/tmp//

" Use space as leader
let mapleader="\<space>"

" Disable the f*cking bell
set belloff=all

" Show trailing whitespace
set list
set listchars=trail:·,

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

" Show commands as they're typed
set showcmd

" Install vim-plug packages
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
call plug#end()
