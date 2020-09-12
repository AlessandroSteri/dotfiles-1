set relativenumber          " Relative numbers are good
set number                  " Show current line's absolute number
set autoread                " Reload files changed outside vim
set hidden                  " Let buffers exist in the background
set undofile                " Save undo history in a persistent file
set smartindent             " Smart indent
set expandtab               " Tabs are spaces
set shiftwidth=4            " Change the number of space characters inserted for indentation
set softtabstop=4 tabstop=4 " Insert space characters instead of a tab
set list                    " Highlight unwanted spaces and tabs
set foldmethod=indent       " Automatically fold by indent level
set nofoldenable            " Do not fold anything by default
set foldnestmax=3           " deepest fold is 3 levels
set ignorecase              " Ignore case when searching
set smartcase               " Do not ignorecase anymore if the search pattern contains capitals
set signcolumn=yes          " Add by default an extra column for linting signs
set nostartofline           " Do not jump to first character with page commands
set gdefault                " Use 'g' flag by default with :s/foo/bar/.
set splitbelow              " When splitting, put the new window below the current
set splitright              " When splitting, put the new window right of the current
set clipboard=unnamed       " Use system clipboard
set cursorline              " Highlight current line
set path+=**                " Search down into subfolders
set autochdir               " Automatically change directory to che current buffer's directory
set nojoinspaces            " Prevents inserting two spaces after punctuation on a join
set showtabline=2           " Always show tabs bar
set updatetime=300          " Faster updatetime for better user experience
set timeoutlen=300          " Faster timeoutlen for better user experience
set noshowcmd               " Get rid of the display of last command
set noshowmode              " We don't need to see things like -- INSERT -- anymore
set shortmess+=F            " Get rid of the file name displayed in the command line bar
set shortmess+=c            " Don't pass messages to ins-completion-menu
let mapleader="\<Space>"    " Change leader to the spacebar

" Stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore=*.pyc,*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=.git,*.rbc,*.pyc,__pycache__
