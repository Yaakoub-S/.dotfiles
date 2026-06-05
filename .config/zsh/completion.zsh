# basic completion
fpath=(/usr/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
