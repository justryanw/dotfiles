alias copy='pbcopy'
alias paste='pbpaste'
alias usage='du -hxd 1 | sort -h'
alias rsync='rsync -ah --info=progress2 --no-i-r'

# Yggdrasil
alias ygg='sudo yggdrasilctl'
alias peers='sudo yggdrasilctl getPeers'
alias self='sudo yggdrasilctl getSelf'

# MacPorts
alias search="port search"
alias info="port info"
alias install="sudo port install"
alias uninstall="sudo port uninstall"
alias update="sudo port selfupdate && sudo port upgrade outdated"
alias list="port echo requested"
alias installed="port installed"
alias outdated="port outdated"

# NPM
alias serve="npm run serve"
alias lint="npm run lint-fix"
alias upgrade="npx npm-check -u"

