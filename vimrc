set number relativenumber
set scrolloff=3
set showmatch
set ignorecase
set smartcase
set cursorline
set foldmethod=indent
set nofoldenable
set foldlevel=2
set noswapfile
" Enable mouse
set mouse=a
" Long lines
set textwidth=79
set colorcolumn=+1

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
" Resize windows
nnoremap <silent> <leader>+ :vertical resize +5<cr>
nnoremap <silent> <leader>- :vertical resize -5<cr>
" Edit .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Delete to blackhole register
nmap <leader>d "_d
" Find file in NERDTree
nnoremap <leader>f :NERDTreeFind<cr>
" Do some greppin
nnoremap <leader>g :grep -ri
" Map : to ; also in command mode.
nnoremap ; :
vmap ; :
nmap <silent> <leader>/ :nohlsearch<CR>
" Redraw screen every time focus is gained
au FocusGained * :redraw!
" Ctrl+P searching"
nnoremap <C-p> :FZF<cr>
" Open tagbar
nmap <F8> :TagbarToggle<CR>

" Faster tab navigation
nnoremap <C-t> :tabnew<cr>
nnoremap <leader>0 1gt
nnoremap <leader>1 2gt
nnoremap <leader>2 3gt
nnoremap <leader>3 4gt
nnoremap <leader>4 5gt
nnoremap <leader>5 6gt
nnoremap <leader>6 7gt
nnoremap <leader>7 8gt
nnoremap <leader>8 9gt
nnoremap <leader>9 10gt
" Turn hex-mode on/off
map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>


""""""""""
" Autocmds
""""""""""

" Commenting blocks of code.
autocmd BufEnter *                let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd BufEnter vimrc            let b:comment_leader = '" '
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'"
" Auto-reload vimrc
autocmd BufWritePost ~/.vimrc,vimrc source ~/.vimrc


""""""""""""""
" Vim-Plug Setup
""""""""""""""

call plug#begin('~/.vim/plugged')


"""""""""
" Plugins
"""""""""

Plug 'tpope/vim-sensible'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'luochen1990/rainbow'
Plug 'danro/rename.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'udalov/kotlin-vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-dispatch'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kshenoy/vim-signature'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Colorschemes
Plug 'dracula/vim'
Plug 'hzchirs/vim-material'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jdsimcoe/abstract.vim'
Plug 'fatih/molokai'
Plug 'patstockwell/vim-monokai-tasty'

" FZF
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
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Automatically open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close if NERDTree is the only editor open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Enable relative line numbers in NERDTree
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
" Automatically open tagbar
autocmd BufEnter *.java :TagbarOpen

if (has("termguicolors"))
  set termguicolors
endif
