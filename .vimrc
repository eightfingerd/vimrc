" --- Basic
syntax on
syntax enable
set nocompatible
set encoding=utf-8
set cindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set autoread
set nobackup
set noswapfile
set history=1000
set backspace=2
set whichwrap+=<,>,h,l
set report=0
set clipboard+=unnamed
set completeopt=preview,menu
set foldenable


" --- UI
set guioptions-=T
set guioptions-=m
set laststatus=2  " show status bar forever
set listchars+=tab:>-,trail:-
colorscheme delek
set statusline=%F%m%r%h%w\ %=%l,%v\ %p%%\ %Y\ %{&ff}\ %{strftime(\"%d/%m/%y\ %H:%M\")}
" cursor
set cursorline
" search
set hlsearch
set incsearch
set showmatch
" mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key


" --- Key
let mapleader = "\<space>"
" common
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" vimrc
nnoremap <Leader>ve :vi ~/.vimrc<CR>
nnoremap <Leader>vf :source $MYVIMRC<CR>
" window
nnoremap <Leader>wn <C-W><C-W>
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>wv :vs<CR>
" buffer
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>


" --- Misc
" make cursor at the last place
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif


" --- Plugin
filetype on
filetype plugin on
filetype indent on

