" Markdown

map <leader>C :w! \| !markdown_py % -f %:r.html<CR>
map <leader>f :!$BROWSER %:r.html &<CR><CR>
" Wrap given URL into a Markdown link
map <leader>l "lciW[]()<ESC>"lPF]i
" Wrap a given word into a Markdown link
vmap <leader>L "lc[]()<ESC>2h"lPf(a
" Create a code box
map <leader>b "_o```<ENTER>```<ESC>"_O
