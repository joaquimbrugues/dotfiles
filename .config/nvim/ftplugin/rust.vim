" Rust

" Mappings
" Cargo check
map <leader>gc :w! \| Ccheck<CR>
map <leader>gr :w! \| Crun<CR>
map <leader>gb :w! \| Cbuild<CR>
map <leader>gt :w! \| Ctest<CR>
" Open terminal in current folder
map <leader><ENTER> :!$TERMINAL &<CR><CR>
" Wrap {} sets
imap {<ENTER> {<ENTER>}<ESC>"_O
imap {<SPACE> {<SPACE><SPACE>}<LEFT><LEFT>
" Quickly write a println!
imap <m-1> println!(""<ESC>i
