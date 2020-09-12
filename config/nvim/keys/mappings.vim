" Unset the last search pattern
nnoremap <silent><bs> :noh<cr>

" Move between buffers with tab
" and shift-tab
noremap <silent><Tab> :bnext<cr>
noremap <silent><S-Tab> :bprevious<cr>

" Easy incremental and decremental
" numbers with + and -
vnoremap <silent>+ g<C-a>
vnoremap <silent>- g<C-x>

" Make U redo
noremap <silent>U <c-r>
noremap <silent><c-r> U

" Make Y yank to end of line to
" be consistent with C and D.
noremap <silent>Y y$

" Edit nonexistent file under cursor
noremap <silent>ge :e <cfile><cr>

" Open file under cursor with zathura
noremap <silent>gz :call Zathura()<cr><cr>

" Write all modified buffers by hitting return
noremap <silent><cr> :wa<cr>
