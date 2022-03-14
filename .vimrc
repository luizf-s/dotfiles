call plug#begin('~/.config/.vim/autoload/plug')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'morhetz/gruvbox'
    Plug 'tek256/simple-dark'
call plug#end()

" CONFIGS
" =======
set noswapfile
set hidden
set nocompatible

set incsearch
set ignorecase
set showmatch

set splitright
set splitbelow

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ffs=unix,dos

" Netrew
let g:netrw_banner=0
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_winsize=15

" Indent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

autocmd Filetype javascript      setlocal ts=2 sw=2
autocmd Filetype javascriptreact setlocal ts=2 sw=2
autocmd Filetype typescript      setlocal ts=2 sw=2
autocmd Filetype typescriptreact setlocal ts=2 sw=2
autocmd Filetype css             setlocal ts=2 sw=2
autocmd Filetype scss            setlocal ts=2 sw=2
autocmd Filetype html            setlocal ts=2 sw=2
autocmd Filetype go              setlocal ts=4 sw=4 sts=4 noexpandtab

" KEYBIDINGS
" ==========
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

nnoremap <leader>ç :vsplit $MYVIMRC<cr>
nnoremap <leader><f12> :source $MYVIMRC<cr>
nnoremap <leader><space> :noh<cr>

" FZF
" ===
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
" let g:fzf_layout = {'window': 'enew'}
let g:fzf_layout = {'window': { 'width': 1, 'height': 0.6, 'yoffset': 1.0 } }
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/Debug/**' -prune -o -path 'coverage/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
nnoremap <silent> <leader>k :BLines<CR>
nnoremap <silent> <leader>l :Lines<CR>

" FUGITIVE
" ========
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :G<CR>
noremap <Leader>gb :Git blame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" THEME
" =====
" transparent background
"autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
" hi Normal guibg=NONE ctermbg=NONE

let base16colorspace=256
set termguicolors

" colorscheme simple-dark
colorscheme gruvbox

" set background=light
" colorscheme PaperColor
