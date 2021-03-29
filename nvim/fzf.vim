set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:fzf_layout = {'window': 'enew'}
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/Debug/**' -prune -o -path 'coverage/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
nnoremap <silent> <leader>k :BLines<CR>
nnoremap <silent> <leader>l :Lines<CR>
