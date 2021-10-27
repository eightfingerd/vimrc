" --- Basic
syntax on
syntax enable
set nocompatible
set encoding=utf-8
set spell
set spelllang=en_us
set cindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set history=1000
set backspace=2
set whichwrap+=<,>,h,l
set report=0
set clipboard+=unnamed
set completeopt=preview,menu
set foldenable

set modifiable
set write
set autoread
set nobackup
set noswapfile


" --- UI
set wildmenu
set guioptions-=T
set guioptions-=m
set guioptions-=r
set laststatus=2  " show status bar forever
set list listchars=tab:▸\ ,trail:.
set list
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
" netrw
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_liststyle = 3


" --- Key
let mapleader = "\<space>"
set timeoutlen=2000
" common
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <NL> i<CR><ESC> " C-j
" terminal
nnoremap <Leader>t :terminal<CR>
tnoremap <Leader>tq <C-\><C-n><CR>
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
nnoremap <Leader>b0 :bfirst<CR>
nnoremap <Leader>bx :blast<CR>
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [l :lbefore<CR>
nnoremap ]l :lafter<CR>
nnoremap [t :tprev<CR>
nnoremap ]t :tnext<CR>
" netrw
nnoremap <C-n> :Lexplore<CR>


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

