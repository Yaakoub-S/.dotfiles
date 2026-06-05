# config dir
export ZDOTDIR=$HOME/.config/zsh

# misc
export EDITOR="nvim"
export VISUAL=$EDITOR
export PAGER="less"
export LANG="en_US.UTF-8"

# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"

# history
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# dotfiles
export DOTFILES="$HOME/.dotfiles"

# fix for delayed esc when in vi mode
export KEYTIMEOUT=1

# path
typeset -U path
path=(
    $XDG_BIN_HOME
    $HOME/bin
    $path
)
export PATH
