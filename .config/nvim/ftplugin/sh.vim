" Shell scripts

" Mappings
nnoremap <leader>x :!chmod +x %<CR>

" Open terminal in current folder
map <leader><ENTER> :!$TERMINAL &<CR><CR>

" ALE
map <leader>d :ALEGoToDefinition<CR>
let g:ale_enabled = 1
