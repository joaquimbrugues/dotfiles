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
call plug#end()

" Set spell checking
map <F1> :setlocal spell spelllang=ca<CR>
map <F2> :setlocal spell spelllang=en<CR>
map <F3> :setlocal spell spelllang=es<CR>
map <F4> :setlocal spell spelllang=nl<CR>
map <F5> :setlocal spell spelllang=ru<CR>
