" runtime for external programs and vim scripts
set runtimepath^=/src/bin
set runtimepath+=~/.vim
set runtimepath+=~/.vim/after
set runtimepath+=~/.config/nvim
let $packpath = &runtimepath

" some plugins use python
let g:python3_host_prog='/usr/bin/python3'
let g:python_host_prog='/usr/bin/python'

call plug#begin('~/.config/.vim/autoload/plug')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'chriskempson/base16-vim'
    Plug 'tek256/simple-dark'

    Plug 'cohama/lexima.vim'
    Plug 'junegunn/vim-easy-align'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'herringtondarkholme/yats.vim'
    Plug 'ianks/vim-tsx'
call plug#end()

source $HOME/.config/nvim/configs.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/fugitive.vim
source $HOME/.config/nvim/autoformat.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/langs/csharp.vim
