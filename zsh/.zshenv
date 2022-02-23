# config home
export XDG_CONFIG_HOME="$HOME/.config"

# specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cache files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events for history file
export SAVEHIST=10000

# Dotfiles
export DOTFILES="$HOME/dotfiles"

# fzf + ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
