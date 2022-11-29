alias a='nvim ~/.config/zsh/alias.zsh'
alias la='cat ~/.config/zsh/alias.zsh'

alias usage='du -ahxr | sort -hr'
alias rsync='rsync -ah --info=progress2 --no-i-r'
alias copy='pbcopy'
alias paste='pbpaste'

# MacPorts
alias install="sudo port install"
alias uninstall="sudo port uninstall"
alias update="sudo port selfupdate && sudo port upgrade outdated"
alias clean="sudo port uninstall inactive && sudo port uninstall leaves"

alias search="port search"
alias info="port info"
alias installed="port installed"
alias requested="port installed requested"
alias outdated="port outdated"

# NPM
alias serve="npm run serve"
alias lint="npm run lint-fix"
alias compress="npm run compress"
alias upgrade="npx npm-check -u"

# Yggdrasil
alias ygg='sudo yggdrasilctl'
alias peers='sudo yggdrasilctl getPeers'
alias self='sudo yggdrasilctl getSelf'

