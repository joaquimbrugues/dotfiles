" Mappings
" Cargo check
map <leader>C :w! \| Ccheck<CR>
" Go to definition
map <leader>d :ALEGoToDefinition -vsplit<CR>
" Go to prev/next error
map <leader>e <Plug>(ale_next_wrap_error)
map <leader>E <Plug>(ale_previous_wrap_error)
" Rename
map <leader>r :ALERename<CR>
" Wrap {} sets
imap {<ENTER> {<ENTER>}<ESC>"_O
imap {<SPACE> {<SPACE><SPACE>}<LEFT><LEFT>

"let g:ale_fix_on_save = 1
let g:deoplete#enable_at_startup = 1
