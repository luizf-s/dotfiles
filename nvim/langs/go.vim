
autocmd BufRead *.go nnoremap <F9> :w<CR>:!go run %<CR>
autocmd BufRead *.go nnoremap <F10> :e /tmp/godraft.go<CR>
