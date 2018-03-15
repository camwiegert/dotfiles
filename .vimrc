syntax enable
set background=dark
colorscheme solarized

" Better netrw defaults
let g:netrw_banner=0

" Remap for split nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Speed up updates for gitgutter
set updatetime=500

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
set wildignore+=node_modules/,.git/

" Ignore case in pattern matching
set ignorecase

" Convert tabs to spaces
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround

" Set matching indenation on newlines
set autoindent
set smartindent

" Allow backspace in insert mode
set backspace=indent,eol,start

" Always show status line
set laststatus=2
set statusline=%F\ %m%=L%l:%c

" Open splits to right and bottom
set splitbelow
set splitright
