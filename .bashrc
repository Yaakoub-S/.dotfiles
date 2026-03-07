#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='nvim'
export EDITOR=nvim
export DOTFILES="$HOME/.dotfiles"

alias gitdf='git --git-dir=$DOTFILES --work-tree=$HOME'
