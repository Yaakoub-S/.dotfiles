# vi mode
bindkey -v

zle-keymap-select() {
  if [[ ${KEYMAP} == vicmd ]]; then
    RPROMPT="%F{red}[N]%f"
  else
    RPROMPT=""
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

zle-line-init() {
  RPROMPT=""
  zle reset-prompt
}
zle -N zle-line-init

## fix old vi backspace
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# navigation 
setopt auto_cd 

# history
setopt inc_append_history share_history hist_ignore_space
