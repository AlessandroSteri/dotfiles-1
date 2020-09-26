# ls aliases
alias ll='ls -lAh'
alias la='ls -A'
alias l='ls'

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# Execute a command in a specific directory
xin() {
    ( cd "${1}" && shift && (eval "${@}") )
}

# Quick NeoVim
alias v=nvim

# Quick Python3
alias py=python3

# Quick IPython shell
alias ipy=ipython

# Attach to default tmux session if exists
# else create it
alias daniel='tmux new-session -A -s daniel'

# Quick build and export compile commands
cmk () {
    if [ ! -f "CMakeLists.txt" ]; then
        v CMakeLists.cmake
        mv CMakeLists.cmake CMakeLists.txt
    fi
    if [ ! -f "main.cpp" ]; then
        v main.cpp
    fi
    cmake .
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
}

# Use colors in coreutils utilities output
alias tree='tree -a -C -l -q -I ".git"'

# Quick zathura
alias z=zathura

# Quick git add submodule
alias gsa='git submodule add'

# Quick clone one of my repos
my () {
    git clone --recurse-submodules https://github.com/danielfalbo/$1
}

# Quick install python requirements
alias pyr='pip3 install -r requirements.txt --user'

# tmux rename window
alias trn='tmux rename-window'
