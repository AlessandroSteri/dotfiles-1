function! s:goyo_enter()
    let fts = ['markdown', 'tex', 'python', 'html', 'htmldjango']
    if index(fts, &filetype) != -1 && &columns >= 120
        Goyo 120
    endif
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status off
        silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    set scrolloff=999
    Limelight
    autocmd CursorHold <buffer> update
    if (&filetype=='markdown') && &columns >= 120
        Voom pandoc
    elseif (&filetype=='tex') && &columns >= 120
        Voom latex
    elseif (&filetype=='python') && &columns >= 120
        Voom python
    elseif (&filetype=='html' || &filetype=='htmldjango') && &columns >= 120
        Voom html
    endif
endfunction

function! s:goyo_leave()
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status on
        silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    autocmd! CursorHold
    set scrolloff=1
    Limelight!
    hi clear Conceal
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
