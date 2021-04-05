# File: .zshenv
# Author: Greg Folker

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="vim"
export VISUAL="vim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE="10000"
export SAVEHIST="10000"

export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

export LANG="en_US.UTF-8"

export PATH="$GOBIN:$PATH"
