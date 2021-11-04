autoload -Uz add-zsh-hook zcs_info
setopt prompt_subst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%} %{$fg[magenta]%} %b%{$fg[blue]%})"
#zstyle ':vcs_info:git:*' formats '(%b %u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

add-zsh-hook precmd() { 
  vcs_info
  print -nP '%F{blue}[%F{white}%n%F{red}@%F{white}%m%F{blue}] ' # [user@hostname]
  print -nP '%F{green}➜ %F{cyan}%1~ ' # ➜ directory
  print -P '%F{red}${vcs_info_msg_0_}' # version control
}
PROMPT='%F{cyan}>%f '


