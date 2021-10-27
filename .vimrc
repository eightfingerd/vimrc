" --- Plugin
filetype on
filetype plugin on
filetype indent on


" --- Basic
syntax on
syntax enable
set nocompatible
set encoding=utf-8
set ffs=unix,dos,mac
set spell
set spelllang=en_us
set cindent
set autoindent
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set history=1000
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set report=0
set clipboard+=unnamed
set completeopt=preview,menu
set foldenable

set modifiable
set write
set autoread
set nowb
set nobackup
set noswapfile

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" --- UI
set wildmenu
set guioptions-=T
set guioptions-=m
set guioptions-=r
set laststatus=2  " show status bar forever
set list listchars=tab:▸\ ,trail:.
set list
set magic
colorscheme delek
set statusline=%F%m%r%h%w\ %=%l,%v\ %p%%\ %Y\ %{&ff}\ %{strftime(\"%d/%m/%y\ %H:%M\")}
" cursor
set cursorline
" search
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
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
" vimrc
nnoremap <Leader>ve :vi ~/.vimrc<CR>
nnoremap <Leader>vf :source $MYVIMRC<CR>
" common
nnoremap <Leader>w :w<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
nnoremap <Leader>q :q<CR>
nnoremap <NL> i<CR><ESC> " C-j
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
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
" tab
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprev<CR>
nnoremap <Leader>tm :tabmove<CR>
let g:lasttab = 1
nnoremap <Leader>tl :exe "tabn ".g:lasttab<CR>
if has("autocmd")
  au TabLeave * let g:lasttab = tabpagenr()
endif
map <leader>te :tabedit <C-r>=expand("%:p:h")<CR>/
map <leader>cd :cd %:p:h<CR>:pwd<CR>
" terminal
nnoremap <Leader>x :terminal<CR>
tnoremap <Leader>xq <C-\><C-n><CR>
" netrw
nnoremap <C-n> :Lexplore<CR>


" --- Misc
" make cursor at the last place
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

