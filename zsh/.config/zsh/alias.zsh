# Meta
alias a='$EDITOR ~/.config/zsh/alias.zsh'
alias al='less ~/.config/zsh/alias.zsh'

# Shortcuts
alias la='ls -A'
alias usage='du -ahxr | sort -hr'
alias copy='pbcopy'
alias paste='pbpaste'

# NPM
alias serve="npm run serve"
alias lint="npm run lint-fix"
alias compress="npm run compress"
alias upgrade="npx npm-check -u"
alias nkill="pkill -9 node"

# Yggdrasil
alias ygg='sudo yggdrasilctl'
alias peers='sudo yggdrasilctl getPeers'
alias self='sudo yggdrasilctl getSelf'

# Bingo
alias copyclient='/usr/local/bin/rsync -ah --delete --info=progress2 ../bingo-client/packages/* ./node_modules/@bingo-client/.'
alias buildclient='cd ../bingo-client && npm run build && cd - && copyclient && serve'
alias copygame="rsync -ah --exclude 'node_modules' --exclude 'dist' --exclude '.git'"
