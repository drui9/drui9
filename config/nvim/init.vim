syntax enable

set mouse=
set wrap!
set tabstop=4
set autoindent
set noswapfile
" set cursorline
set scrolloff=12
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set fileformat=unix
set number relativenumber
set backspace=indent,eol,start

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'karb94/neoscroll.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/NERDTree'
Plug 'alvan/vim-closetag'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
" Plug 'dense-analysis/ale'
" Plug 'JuanDAC/betty-ale-vim'
call plug#end()

" customizations
colorscheme tender
let g:NERDTreeMinimal =1
let NERDTreeQuitOnOpen =0
let g:closetag_shortcut = '>'
let g:airline_theme='ayu_mirage'
let g:closetag_filenames = '*.html,*.xhtml'
" let g:ale_linters = {'c': ['betty-style', 'betty-doc']}

" load  coc keymap
source ~/.config/nvim/keymap.vim

" misc shortcuts
inoremap c[ <Esc>
nmap . :suspend <CR>
nmap nt :NERDTreeToggle<CR>

" open file management
nmap qq :q <CR>

" screen splitting
nmap vsp :vsplit <CR>
nmap sp :split <CR>

" tabs
nmap > :tabnew <CR>
nmap < :tabclose <CR>

" switch split screens
nmap st <C-w>x <CR>

" cursor oops
nmap cu <C-w><Up> <CR>
nmap cd <C-w><Down> <CR>
nmap cr <C-w><Right> <CR>
nmap cl <C-w><Left> <CR>

" terminal oops
nmap tt :!mate-terminal <CR><CR>

" git oops
nmap gl :!git log --oneline -n 5<CR>
nmap gs :!git status <CR>
nmap gb :!git branch --list<CR>

" build tools
nmap mk :!make <CR>

" disable arrow keys
" also disables two-finger scrolling on laptop trackpads
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
