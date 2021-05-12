" TeX and LaTeX

" Set the working directory to the directory of the file
set autochdir
" Automatically check spelling
setlocal spell spelllang=en

" Abbreviations
ab RR \mathbb{R}
ab QQ \mathbb{Q}
ab CC \mathbb{C}
ab ZZ \mathbb{Z}
ab NN \mathbb{N}
ab ee \varepsilon
ab LL \mathcal{L}

" Mappings
" Use word as environment (with '\begin' and '\end')
map <c-e> "eciw\begin{}<ESC>"eP"_o\end{}<ESC>"eP"_O
" Add expaned math mode below
imap <c-j> <ESC>"_o\[\]<ESC>hi
" Add inline math mode to the right
imap <c-l> $$<ESC>i
" Use selection as numerator of a fraction, and place the cursor in the denominator
vmap <c-f> "fc\frac{}<ESC>"fPla
" Use word as function for a partial differentiation, and place the cursor in
" the denominator
imap <c-d> <ESC>"fciW\frac{\partial }{\partial <ESC>B"fPEla
" Create application structure
imap <m-1> \begin{array}{rccc} : & & \longrightarrow & \\ & & \longmapsto & \end{array}<ESC>?:<CR>i
" Create a left/right bracket-array structure
imap <m-2> \left\{ \begin{array} \end{array} \right.<ESC>2Bhi
imap <m-3> \left. \begin{array} \end{array} \right\}<ESC>2Bhi
" Create 'restriction' structure
imap <m-4> \left.\right\|<ESC>6hi
" Create left-right bracket keys structure
imap <m-7> \left\{\right\}<ESC>7hi
" Create left-right parenthesis structure
imap <m-8> \left(\right)<ESC>6hi
" Create left-right bracket structure
imap <m-9> \left[\right]<ESC>6hi
" Place selection into bold brackets
vmap <c-b> "bc{\bf }<ESC>"bP
" Place selection into italics brackets
vmap <c-i> "ic{\it }<ESC>"iP

" Compile document
map <leader>C :w! \| !pdflatex %<CR><CR>
" Open bibliography in split
map <leader>b :vsp $BIB<CR>
" Open compiled document with system READER
map <leader>z :!$READER %:r.pdf &<CR><CR>
" Open terminal in current folder
map <leader><ENTER> :!$TERMINAL &<CR><CR>
