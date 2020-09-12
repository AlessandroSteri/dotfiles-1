path_remove() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

path_append() {
    path_remove "$1"
    PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
    path_remove "$1"
    PATH="$1${PATH:+":$PATH"}"
}

# Install lazydotfiles
connect_the_dots() {
    if [ ! -d "$HOME/.lazy-dotfiles" ]; then
        gcl https://github.com/danielfalbo/lazy-dotfiles ~/.lazy-dotfiles
    fi
    cd ~/.lazy-dotfiles
    gl --ff-only
    ./install
}

# Update dotfiles
dfu() {
    cd ~/.dotfiles
    gl --ff-only
    ./install
    if [ -d "$HOME/.lazy-dotfiles" ]; then
        connect_the_dots
    fi
}

