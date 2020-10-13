" Delete trailing white spaces
function CleanExtraSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

" Open pdf file under cursor with zathura
function Zathura()
  let l:Command = expand("<cfile>")
  execute "!zathura " . l:Command . "&"
endfunction

" Exit Vim if the only remeaning pane would be the compiler errors pane
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'qf') | quit | endif

" Exit Vim if the only remeaning pane would be vim-plug
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'vim-plug') | quit | endif

" Remember folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave ?* silent! mkview | filetype detect
  autocmd BufWinEnter ?* silent! loadview | filetype detect
augroup END

" Automatically create any non-existent directories before writing the buffer
function s:Mkdir()
  let dir = expand('%:p:h')

  if dir =~ '://'
    return
  endif

  if !isdirectory(dir)
    call mkdir(dir, 'p')
  endif
endfunction

autocmd BufWritePre * call s:Mkdir()

" Highlight current line, and show relative numbers only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline relativenumber
    autocmd WinLeave * setlocal nocursorline norelativenumber
augroup END
