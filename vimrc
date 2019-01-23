set relativenumber
set scrolloff=3
set showmatch

"""""""""
" Keymaps
"""""""""

let mapleader = ","

" Remove Excess Whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" Re-highlight text
nnoremap <leader>v V`]
" Open Split Window
nnoremap <leader>w <C-w>v<C-w>l
" Navigate windows using ^+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Edit .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Delete to blackhole register
nmap <leader>d "_d

nnoremap <C-p> :FZF<cr>


""""""""""""""
" Vim-Plug Setup
""""""""""""""

call plug#begin('~/.vim/plugged')


"""""""""
" Plugins
"""""""""

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'

" Colorschemes
Plug 'dracula/vim'
Plug 'hzchirs/vim-material'

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'


"""""""""""""""""
" Vim-Plug Teardown
"""""""""""""""""

" All of your Plugins must be added before the following line
call plug#end()


let g:rainbow_active = 1

"""""""""""""""""
" Set Colorscheme
"""""""""""""""""
colorscheme dracula

" Automatically open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close if NERDTree is the only editor open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
