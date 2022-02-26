source "$XDG_CONFIG_HOME/zsh/aliases"

# Options
setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

# Complete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
fpath=($ZDOTDIR/external $fpath)

# Prompt
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Push current visited directory to the stack.
setopt AUTO_PUSHD
# No duplicates
setopt PUSHD_IGNORE_DUPS
# Do not print to screen
setopt PUSHD_SILENT

# bd
source ~/dotfiles/zsh/external/bd.zsh

# compress
source $DOTFILES/zsh/scripts.sh

# fzf
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# vim
alias vimz='nvim $HOME/dotfiles/zsh/.zshrc'
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode && cursor_mode

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Completion
autoload -U compinit; compinit

# Syntax highlighting cli
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# i3 startup
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# replace clear hotkey
bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'
