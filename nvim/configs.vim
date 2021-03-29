set noswapfile
set hidden          " change buffer without saving
set nocompatible


" ==========================================================================
" interface settings
syntax on

" ==========================================================================
" searching with /

set incsearch           " incremental search: shows matches while typing
set ignorecase          " ignore upper and lower case
set inccommand=split    " show the effects of a command incrementally

set showmatch           " briefly jump to matching bracket when typed

set mouse=a

set splitright
set splitbelow

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ffs=unix,dos

" set laststatus=0

" Netrew
let g:netrw_banner=0
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_winsize=15

" Hooks
autocmd BufWritePre * :%s/\s\+$//e " remove unecessary whitespaces

autocmd BufNewFile,BufRead Dockerfile* set filetype=dockerfile

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
