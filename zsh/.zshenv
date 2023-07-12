export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export ZDOTDIR=$XDG_CONFIG_HOME/zsh

export EDITOR="hx"
export VISUAL="hx"

export PATH=$HOME/.cargo/bin:$PATH

export TERM=linux

. "$HOME/.cargo/env"

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
