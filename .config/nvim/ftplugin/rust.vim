" Rust

" Mappings

" Cargo check
map <leader>gc :w! \| Ccheck<CR>
map <leader>gr :w! \| Crun<CR>
map <leader>gb :w! \| Cbuild<CR>
map <leader>gt :w! \| Ctest<CR>

" Open terminal in current folder
map <leader><ENTER> :!$TERMINAL &<CR><CR>

" ALE
map <leader>d :ALEGoToDefinition<CR>
let g:ale_enabled = 1

" Quickly write a println!
imap <m-1> println!("");<ESC>2hi
