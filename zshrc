# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh theme
export ZSH_THEME="robbyrussell"

# oh-my-zsh plugins
plugins=(git)

# enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Language environment
export LANG=en_US.UTF-8

# Syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto suggetions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# vi-mode
bindkey -v

# Use the vi navigation keys besides cursor keys is menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Use Shift-Tab to move through the completion menu backwards
bindkey '^[[Z' reverse-menu-complete

# Use C-p and C-n to navigate history
bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-history

# Use C-] to confirm suggestion
bindkey "^]" end-of-line

# Fzf utils
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
