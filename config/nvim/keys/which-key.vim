" Map leader and localleader to which_key
noremap <silent> <leader> :silent WhichKey '<Space>'<CR>
noremap <silent> <localleader> :<c-u>WhichKey '\'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Mappings
let g:which_key_map.c = {
      \ 'name' : '+coc',
      \ '=' : [ '<Plug>(coc-format)'                    , 'format'],
      \ 'a' : [ '<Plug>(coc-codeaction)'                , 'line action'],
      \ 'A' : [ '<Plug>(coc-codeaction-selected)'       , 'selected action'],
      \ 'b' : [ ':CocNext'                              , 'next action'],
      \ 'B' : [ ':CocPrev'                              , 'prev action'],
      \ 'c' : [ ':CocList commands'                     , 'commands'],
      \ 'd' : [ '<Plug>(coc-definition)'                , 'definition'],
      \ 'D' : [ '<Plug>(coc-declaration)'               , 'declaration'],
      \ 'E' : [ ':CocList extensions'                   , 'extensions'],
      \ 'f' : [ '<Plug>(coc-format-selected)'           , 'format selected'],
      \ 'h' : [ '<Plug>(coc-float-hide)'                , 'hide'],
      \ 'i' : [ '<Plug>(coc-implementation)'            , 'implementation'],
      \ 'I' : [ ':CocList diagnostics'                  , 'diagnostics'],
      \ 'j' : [ '<Plug>(coc-float-jump)'                , 'float jump'],
      \ 'l' : [ '<Plug>(coc-codelens-action)'           , 'code lens'],
      \ 'm' : [ ':OR'                                   , 'organize imports'],
      \ 'n' : [ '<Plug>(coc-diagnostic-next)'           , 'next diagnostic'],
      \ 'N' : [ '<Plug>(coc-diagnostic-next-error)'     , 'next error'],
      \ 'o' : [ '<Plug>(coc-openlink)'                  , 'open link'],
      \ 'O' : [ ':CocList outline'                      , 'outline'],
      \ 'p' : [ '<Plug>(coc-diagnostic-prev)'           , 'prev diagnostic'],
      \ 'P' : [ '<Plug>(coc-diagnostic-prev-error)'     , 'prev error'],
      \ 'q' : [ '<Plug>(coc-fix-current)'               , 'quickfix'],
      \ 'r' : [ '<Plug>(coc-rename)'                    , 'rename'],
      \ 'R' : [ '<Plug>(coc-references)'                , 'references'],
      \ 's' : [ ':CocList -I symbols'                   , 'references'],
      \ 'S' : [ ':CocList snippets'                     , 'snippets'],
      \ 't' : [ '<Plug>(coc-type-definition)'           , 'type definition'],
      \ 'u' : [ ':CocListResume'                        , 'resume list'],
      \ 'z' : [ ':CocDisable'                           , 'disable coc'],
      \ 'Z' : [ ':CocEnable'                            , 'enable coc'],
      \ '.' : [ ':CocConfig'                            , 'config'],
      \ ';' : [ '<Plug>(coc-refactor)'                  , 'refactor'],
      \ }
let g:which_key_map['d'] = [ ':bd'                      , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'     , 'explorer']
let g:which_key_map['f'] = [ ':Rg'                      , 'fuzzy find text']
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 'a' : [ ':Git add .'                            , 'add all'],
      \ 'c' : [ ':Gcommit -v'                           , 'commit'],
      \ 'd' : [ ':Git diff'                             , 'diff'],
      \ 'D' : [ ':Gdiffsplit'                           , 'diff split'],
      \ 'j' : [ '<plug>(GitGutterNextHunk)'             , 'next hunk'],
      \ 'k' : [ '<plug>(GitGutterPrevHunk)'             , 'previous hunk'],
      \ 'p' : [ ':Gpush'                                , 'push'],
      \ 's' : [ ':Gstatus'                              , 'status'],
      \ 'v' : [ ':GV'                                   , 'browse commits'],
      \ 'V' : [ ':GV!'                                  , 'view buffer commits'],
      \ }
let g:which_key_map['h'] = [ ':vertical:resize -5'      , 'increase split width']
let g:which_key_map['j'] = [ ':resize -5'               , 'decrease split width']
let g:which_key_map['k'] = [ ':resize +5'               , 'decrease split height']
let g:which_key_map['l'] = [ ':vertical:resize +5'      , 'increase split height']
let g:which_key_map['m'] = [ ':Make'                    , 'Make' ]
let g:which_key_map['n'] = [ ':set rnu!'                , 'relative numbers' ]
let g:which_key_map['o'] = [ ':wincmd o'                , 'close all split except the current']
let g:which_key_map.p = {
      \ 'name' : '+plugins',
      \ 'u' : [ ':PlugUpdate'                           , 'update plugins'],
      \ 'p' : [ ':PlugUpgrade'                          , 'update plugin manager'],
      \ 'i' : [ ':PlugInstall'                          , 'install plugins'],
      \ 'c' : [ ':CocUpdate'                            , 'update coc extensions'],
      \ 'C' : [ ':PlugClean'                            , 'clean unused plugins'],
      \ 'U' : [ ':UpdateRemotePlugins'                  , 'update remote plugins'],
      \ }
let g:which_key_map['r'] = [ 'CleanExtraSpaces()'       , 'remove extra whitespaces' ]
let g:which_key_map['s'] = [ ''                         , 'search and replace' ]
noremap <Leader>s :%s//<Left>
let g:which_key_map.t = {
      \ 'name' : '+terminal',
      \ 'a' : [ ':VtrAttachToPane'                      , 'attach to pane'],
      \ 'c' : [ ':VtrSendCtrlC'                         , 'interrupt runner'],
      \ 'd' : [ ':VtrSendCtrlD'                         , 'stop runner'],
      \ 'k' : [ ':VtrKillRunner'                       , 'kill runner'],
      \ 'o' : [ ':VtrOpenRunner'                        , 'open runner'],
      \ 'r' : [ ':VtrSendCommandToRunner'               , 'run']
      \ }
let g:which_key_map['z'] = [ ':Files'                   , 'fuzzy find files']
let g:which_key_map['.'] = [ ':e $MYVIMRC'              , 'edit vimrc' ]
let g:which_key_map[','] = [ ':Goyo'                    , 'zen' ]
let g:which_key_map['='] = [ '<C-w>='                   , 'balance windows' ]
let g:which_key_map['-'] = [ '<C-w>s'                   , 'split vertically' ]
let g:which_key_map['\'] = [ '<C-w>v'                   , 'split horizontally' ]
let g:which_key_map[';'] = [ ':CocCommand template.templateTop', 'load template']

" Trasparent Separator Background
autocmd FileType which_key highlight WhichKeySeperator ctermbg=none

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
