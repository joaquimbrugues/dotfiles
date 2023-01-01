" Rust

" vim-rooter config
let g:rooter_patterns = [ 'Cargo.toml' ]

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

" imaps
imap <m-1> println!("");<ESC>2hi
imap <m-2> panic!("");<ESC>2hi
imap <m-+> += 1;<Left>
imap <m--> -= 1;<Left>
imap <m-*> *= ;<Left>
imap <m-/> /= ;<Left>

" Dirty abbreviations
ab lm let mut
