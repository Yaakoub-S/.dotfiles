# prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%f '
setopt prompt_subst
PROMPT='%F{blue}%~%f ${vcs_info_msg_0_}$ '

# sourcing files 
[[ -f "$ZDOTDIR/aliases.zsh" ]] && . "$ZDOTDIR/aliases.zsh"
[[ -f "$ZDOTDIR/options.zsh" ]] && . "$ZDOTDIR/options.zsh"
[[ -f "$ZDOTDIR/completions.zsh" ]] && . "$ZDOTDIR/completions.zsh"
[[ -f "$ZDOTDIR/plugins.zsh" ]] && . "$ZDOTDIR/plugins.zsh"
