
let mapleader=','

" Buffer navigation
nnoremap <leader>z :bp<CR>
nnoremap <leader>x :bn<CR>
nnoremap <leader>cb :bd<CR>

" Windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tabs navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-t> :tabnew<CR>

" Searching
" :Rg needs fzf.vim and Rg installed
nnoremap <F1> :Help<CR>
nnoremap <F2> :%s/
vnoremap <F2> :s/
nnoremap <F3> :grep! -iE "
nnoremap <F4> :Rg<CR>
nnoremap <F5> :copen<CR>

nnoremap <F6> :Vexplore<CR>
nnoremap <F7> :Marks<CR>
nnoremap <F9> :Gvdiffsplit!<CR>
nnoremap <F12> :set laststatus=

nnoremap <leader>ç :vsplit $MYVIMRC<cr>
nnoremap <leader><f12> :source $MYVIMRC<cr>
nnoremap <leader><space> :noh<cr>
