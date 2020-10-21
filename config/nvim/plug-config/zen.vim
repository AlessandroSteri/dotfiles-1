function! s:goyo_enter()
    let fts = ['markdown', 'tex', 'python', 'html', 'htmldjango']
    if index(fts, &filetype) != -1 && &columns >= 120
        Goyo 120
    endif
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status off
        silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
        silent !tmux set pane-border-status off
    endif
    autocmd CursorHold <buffer> update
    if (&filetype=='markdown') && &columns >= 120
        Voom markdown
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
        silent !tmux set pane-border-status top
    endif
    autocmd! CursorHold
    hi clear Conceal
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
