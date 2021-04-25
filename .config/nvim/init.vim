filetype plugin on
let mapleader =" "
set number relativenumber
set mouse=a
" Let the system clipboard interact with vim
set clipboard+=unnamedplus

set nohlsearch
set noshowmode
set scrolloff=2

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
   silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
   " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Easy commenting
    Plug 'scrooloose/nerdcommenter'
    Plug 'vimwiki/vimwiki'
    " Support for Rust language
    Plug 'rust-lang/rust.vim'
    Plug 'dense-analysis/ale'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Lightline
    Plug 'itchyny/lightline.vim'
call plug#end()

let g:vimwiki_ext2syntax = {}

" Status bar configuration
let g:lightline = {
   \ 'colorscheme': 'darcula',
   \ 'active': {
   \     'left': [ [ 'mode', 'paste' ],
   \               [ 'readonly', 'relativepath', 'modified' ] ],
   \     'right': [ [ 'lineinfo' ],
   \               [ 'percent' ],
   \               [ 'spell', 'filetype' ] ]
   \  }
   \ }
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" NerdTree shortcut
map <leader>t :NERDTreeToggle<CR>

" Set spell checking
map <F1> :setlocal spell spelllang=ca<CR>
map <F2> :setlocal spell spelllang=en<CR>
map <F3> :setlocal spell spelllang=es<CR>
map <F4> :setlocal spell spelllang=nl<CR>
map <F5> :setlocal spell spelllang=ru<CR>

" Adding blank lines without entering insert mode or registering them
map <c-j> "_o<esc>
map <c-k> "_O<esc>

" Ease navigation between horizontal buffers
map <c-h> <c-w>h
map <c-l> <c-w>l

" Paste in selection (visual mode)
vmap p "_dP

" Prevent comments from being inserted after pressing o or O in normal mode or
" hitting <enter> in insert mode
autocmd FileType * setlocal formatoptions-=o formatoptions-=r

" Setting up ALE
let g:ale_fixers = {
   \  'rust': ['rustfmt'],
   \}

let g:ale_linters = {
   \  'rust': ['rls'],
   \}
let g:deoplete#sources = {'rust': ['ale']}
map <leader>A <Plug>(ale_toggle_buffer)
