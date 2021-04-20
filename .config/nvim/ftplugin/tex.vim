" TeX and LaTeX

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
" Use word as numerator of a fraction, and place the cursor in the denominator
imap <m-f> <ESC>"fciW\frac{}<ESC>"fPla
" Use word as function for a partial differentiation, and place the cursor in
" the denominator
imap <c-d> <ESC>"fciW\frac{\partial }{\partial <ESC>B"fPEla
" Create application structure
imap <m-1> \begin{array}{rccc} : & & \longrightarrow & \\ & & \longmapsto & \end{array}<ESC>?:<CR>i
" Create a left/right bracket-array structure
imap <m-2> \left\{ \begin{array} \end{array} \right.<ESC>2Bhi
imap <m-3> \left. \begin{array} \end{array} \right\{<ESC>2Bhi
" Create 'restriction' structure
imap <m-7> \left.\right\|<ESC>6hi
" Create left-right parenthesis structure
imap <m-8> \left(\right)<ESC>6hi
" Create left-right bracket structure
imap <m-9> \left[\right]<ESC>6hi

" Compile document
map <leader>C :w! \| !pdflatex "<c-r>%"<CR>
" Open bibliography in split
map <leader>b :vsp $BIB<CR>
