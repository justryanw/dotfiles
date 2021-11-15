" Better navigation for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Tab completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Retain selection when tabbing
vnoremap < <gv
vnoremap > >gv

" Easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab will move between text buffers and shift tab to go backwards
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Open NERDTree
nnoremap <Leader>t :NERDTreeToggle<CR>

" Export markdown to HTML
autocmd BufRead,BufNewFile *.md nnoremap <Leader>h :!pandoc --standalone % > $(basename % ".md").html<CR><CR>

" Export markdown to PDF
autocmd BufRead,BufNewFile *.md nnoremap <Leader>p :!pandoc % -o $(basename % ".md").pdf<CR><CR>

" Run a rust project with cargo
autocmd BufRead,BufNewFile *.rs nnoremap <Leader>r :!cargo run<CR>

