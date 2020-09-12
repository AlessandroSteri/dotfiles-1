" Automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugUpdate --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload/plugged')          " Specify a directory for plugins
Plug 'tpope/vim-sensible'                           " Defaults everyone can agree on
Plug 'tpope/vim-surround'                           " Parenthesis matching and surrounding
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Snippets engine, linter, completer and more
Plug 'honza/vim-snippets'                           " Snippets
Plug 'arcticicestudio/nord-vim'                     " Nord theme
Plug 'junegunn/goyo.vim'                            " Distraction-free writing
Plug 'junegunn/limelight.vim'                       " Hyperfocus-writing
Plug 'vim-voom/voom'                                " Sidebar table of contents for markdown files
Plug 'lervag/vimtex'                                " LaTeX support
Plug 'KeitaNakamura/tex-conceal.vim'                " TeX concealing
Plug 'danielfalbo/vim-cute'                         " General concealing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                             " Default implementation of fzf features
Plug 'ryanoasis/vim-devicons'                       " Nerd Font icons
Plug 'tpope/vim-fugitive'                           " Launch Git commands from vim
Plug 'tpope/vim-rhubarb'                            " GitHub extension for fugitive
Plug 'junegunn/gv.vim'                              " Git commit browser
Plug 'airblade/vim-gitgutter'                       " Git diff in signcolumn
Plug 'vim-airline/vim-airline'                      " Status/tabline
Plug 'tpope/vim-dispatch'                           " Asynchronous build and test dispatcher
Plug 'liuchengxu/vim-which-key'                     " Keybindings popup
Plug 'easymotion/vim-easymotion'                    " Faster motions
Plug 'christoomey/vim-tmux-navigator'               " Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-runner'                  " Async run file in tmux pane
" Live markdown preview
Plug 'iamcco/markdown-preview.nvim', {'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end() " Initialize plugin system
