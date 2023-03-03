# Meta
alias a='$EDITOR ~/.config/zsh/alias.zsh'
alias al='less ~/.config/zsh/alias.zsh'

# Shortcuts
alias la='ls -A'
alias usage='du -ahxr | sort -hr'
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

# Bingo
alias copyutils='/opt/local/bin/rsync -ah --delete --info=progress2 ../bingo-client/packages/pixi-utils/ ./node_modules/@bingo-client/pixi-utils'
alias buildutils='cd ../bingo-client && npm run build && cd - && copyutils && serve'
alias copygame="rsync -ah --exclude 'node_modules' --exclude 'dist' --exclude '.git'"
