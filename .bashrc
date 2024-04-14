#
# ~/.bashrc
# 

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Default editor
export EDITOR="nvim"
export VISUAL="nvim"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias g='g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion'

# Prompt
PS1='[\u@\h \W]\$ '

# Run zoxide for cd
eval "$(zoxide init --cmd cd bash)"
