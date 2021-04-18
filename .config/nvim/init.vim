let mapleader =","
set number relativenumber
" Set the working directory to the directory of the file
set autochdir
" Let the system clipboard interact with vim
set clipboard+=unnamedplus

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
call plug#end()

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" NerdTree shortcut
map t :NERDTreeToggle<CR>

" Set spell checking
map <F1> :setlocal spell spelllang=ca<CR>
map <F2> :setlocal spell spelllang=en<CR>
map <F3> :setlocal spell spelllang=es<CR>
map <F4> :setlocal spell spelllang=nl<CR>
map <F5> :setlocal spell spelllang=ru<CR>

" Adding blank lines without entering insert mode or registering them
map <c-j> "_o<esc>
map <c-k> "_O<esc>

" Abbreviations
"
" LaTeX
ab par \frac{\partial}{\partial <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
ab RR \mathbb{R}
ab QQ \mathbb{Q}
ab CC \mathbb{C}
ab ZZ \mathbb{Z}
ab NN \mathbb{N}
ab ee \varepsilon
ab LL \mathcal{L}
ab pl \left.\right\|<Left><Left><Left><Left><Left><Left><Left>
ab (( \left(\right)<Left><Left><Left><Left><Left><Left><Left>
