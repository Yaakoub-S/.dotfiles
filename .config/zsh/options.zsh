# vi mode
bindkey -v
refresh-indicator(){
    case ${KEYMAP} in
        vicmd) RPROMPT="%F{red}-- NORMAL --%f" ;;
        *)     RPROMPT="" ;;
    esac
}
refresh-indicator

zle-line-init zle-keymap-select() {
    refresh-indicator
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line

# navigation 
setopt auto_cd 

# history
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt inc_append_history share_history hist_ignore_space
