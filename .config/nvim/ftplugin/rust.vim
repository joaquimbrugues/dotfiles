" Rust

" vim-rooter config
let g:rooter_patterns = [ 'Cargo.toml' ]

" Mappings

" Cargo check
map <leader>gc :w! \| :TermExec cmd="cargo check" go_back=0<CR>
map <leader>gr :w! \| :TermExec cmd="cargo run" go_back=0<CR>
map <leader>gb :w! \| :TermExec cmd="cargo build" go_back=0<CR>
map <leader>gt :w! \| :TermExec cmd="cargo test" go_back=0<CR>

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
