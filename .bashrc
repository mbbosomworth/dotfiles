#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias g='g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion'
alias vcd='cd ~/.config/nvim && nvim'
alias scd='cd ~/Documents && nvim scratchpad'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init --cmd cd bash)"
