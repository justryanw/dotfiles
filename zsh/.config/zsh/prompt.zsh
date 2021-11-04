autoload -Uz add-zsh-hook zcs_info
setopt prompt_subst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr 'M' # Symbol for unstaged changes
zstyle ':vcs_info:*' stagedstr 'S' # Symbol for staged changes
zstyle ':vcs_info:git:*' formats "%{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%} %{$fg[magenta]%} %b%{$fg[blue]%})"
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]='!' # Symbol for untracked files
  fi
}

add-zsh-hook precmd vcs_info

NEWLINE=$'\n'

PROMPT='%F{blue}[%F{white}%n%F{red}@%F{white}%m%F{blue}] ' # [user@host]
PROMPT+='%F{green}➜ %F{cyan}%1~ ' # ➜ directory
PROMPT+='%F{red}${vcs_info_msg_0_} ' # (git info)
PROMPT+='${NEWLINE}%F{cyan}>%f ' # > 

