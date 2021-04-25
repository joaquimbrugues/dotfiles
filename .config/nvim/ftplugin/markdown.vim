" Markdown

map <leader>C :w! \| !markdown_py "<c-r>%" -f "<c-r>%.html"<CR>
" Wrap given URL into a Markdown link
map <leader>l "lciW[]()<ESC>"lPF]i
" Create a code box
map <leader>b "_o```<ENTER>```<ESC>"_O
