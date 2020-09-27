set foldcolumn=0
set foldlevelstart=0
set foldmarker=\ {{{,\ }}}

" 'space' is fold char ↓
set fillchars=fold:\  " this comment is just making sure there is a space after the \
function! IsMod()
    if exists('g:loaded_gitgutter')
        return gitgutter#fold#is_changed() ? g:modified_label  : ' '
    else
        return ''
    endif
endfunction

function! CreaseIndent() abort
    let fs = nextnonblank(v:foldstart)
    let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    let foldLevelStr = repeat(' ', match(line,'\S'))
    return foldLevelStr
endfunction

function! FoldTxt() abort
    return trim(substitute(
                \ getline(v:foldstart),
                \ '\V\C'
                \ . join(split(&commentstring, '%s'), '\|') . '\|'
                \ . join(split(&foldmarker, ','), '\d\?\|') . '\|'
                \ . join(g:foldtext_stop_words, '\|') . '\|',
                \ '',
                \ 'g'
                \ ))
endfunction

"let g:fold_label = ' '
"let g:commented_label = ' '
let g:lines_label = 'lines'
let g:modified_label = '⚡·'

let g:foldtext_stop_words = [
            \ '\^function',
            \ '!',
            \ 'abort',
            \ ]

let g:crease_foldtext = {
            \ 'default': '%{CreaseIndent()}%{FoldTxt()} %= %{IsMod()} %l '.g:lines_label.'  %f%f%f%f',
            \}
