" Shell scripts

" Mappings
nnoremap <leader>x :!chmod +x %<CR>
vnoremap <leader>n "nc\e[1m\e[0m<ESC>5h"np

" Open terminal in current folder
map <leader><ENTER> :!$TERMINAL &<CR><CR>

" ALE
map <leader>d :ALEGoToDefinition<CR>
let g:ale_enabled = 1
