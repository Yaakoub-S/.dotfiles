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
