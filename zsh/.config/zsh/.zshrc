autoload -U colors && colors
KEYTIMEOUT=5

for file in $ZDOTDIR/*.zsh; do
    source "$file"
done

# Prompt
eval "$(starship init zsh)"

# Autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#505050"
bindkey '^ ' autosuggest-accept

# Completions
if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

autoload -Uz compinit
compinit
fi

rm -f ~/.zcompdump; compinit

# Syntax Highligh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fuzzy find
# source /opt/local/share/fzf/shell/key-bindings.zsh
# source /opt/local/share/fzf/shell/completion.zsh
# export FZF_COMPLETION_TRIGGER='**'
# export FZF_DEFAULT_COMMAND='rg --files --hidden --no-messages'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

