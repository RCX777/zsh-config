#!/usr/bin/env bash

ZDOTDIR=$HOME/.config/zsh

mkdir -p $ZDOTDIR
cp ./zshrc $HOME/.zshrc
cp ./p10k.zsh $HOME/.p10k.zsh
cp ./aliases.zsh $ZDOTDIR/

