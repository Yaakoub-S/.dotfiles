local p="/usr/share/zsh/plugins"

# autosuggestions
[[ -f "$p/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && \
    source "$p/zsh-autosuggestions/zsh-autosuggestions.zsh"

# substring history search
if [[ -f "$p/zsh-history-substring-search/zsh-history-substring-search.zsh" ]]; then
    source "$p/zsh-history-substring-search/zsh-history-substring-search.zsh"
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
    bindkey -M vicmd 'k' history-substring-search-up
	bindkey -M vicmd 'j' history-substring-search-down
fi

# syntax highlighting
[[ -f "$p/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
    source "$p/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# fzf
command -v fzf &>/dev/null && . <(fzf --zsh)

