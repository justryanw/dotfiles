autoload -U colors && colors
KEYTIMEOUT=5

for file in $ZDOTDIR/*.zsh; do
    echo "Loading $file"
    source "$file"
done
