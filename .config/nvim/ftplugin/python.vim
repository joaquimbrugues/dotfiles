" Python

" Set the working directory to the directory of the file
set autochdir

map <leader>C :w! \| :TermExec cmd="python %" go_back=0<CR>
map <leader>p :w! \| :TermExec cmd="clear; python -q" go_back=0<CR>
map <leader>T :w! \| :TermExec cmd="python -m unittest %" go_back=0<CR>
