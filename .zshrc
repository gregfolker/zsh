# File: .zshrc
# Author: Greg Folker

setopt HIST_SAVE_NO_DUPS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

source "$ZDOTDIR/aliases.zsh"

fpath=($ZDOTDIR/plugins $fpath)
autoload -U compinit; compinit
_comp_options+=(globdots)
source "$ZDOTDIR/plugins/completion.zsh"

fpath+=($ZDOTDIR/prompt/pure $fpath)
autoload -U promptinit; promptinit
prompt pure
