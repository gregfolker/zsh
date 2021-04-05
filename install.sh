#!/usr/bin/env bash

if [[ -z $XDG_CONFIG_HOME  ]] ; then
   export XDG_CONFIG_HOME="$HOME/.config"
fi

ZSH="$XDG_CONFIG_HOME/zsh"
ZSHRC="$XDG_CONFIG_HOME/zsh/.zshrc"
ZSHENV="$HOME/.zshenv"
PLUGINS="$ZSH/plugins"
PROMPT="$ZSH/prompt"

mkdir -p $ZSH && mkdir -p $PLUGINS && mkdir -p $PROMPT

cp plugins/completion.zsh $PLUGINS
cp aliases.zsh $ZSH
cp -r prompt/pure $PROMPT

if [[ -e $ZSHRC ]] ; then
   mv $ZSHRC $ZSHRC-old
fi

if [[ -e $ZSHENV ]] ; then
   mv $ZSHENV $ZSHENV-old
fi

touch $ZSHRC && ln -sf ${PWD}/.zshrc $ZSHRC
touch $ZSHENV && ln -sf ${PWD}/.zshenv $ZSHENV
