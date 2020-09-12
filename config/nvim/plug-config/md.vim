" Quick start and stop markdown preview
autocmd BufNewFile,BufRead *.md map <localleader>ll :MarkdownPreview<cr>

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0

" Make the preview available on other devices on the same network
let g:mkdp_open_to_the_world = 1

" preview page title
let g:mkdp_page_title = '${name}'
