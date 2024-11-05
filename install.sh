#!/usr/bin/env bash

ZHOME=${1:-$HOME}

ZDOTDIR=$ZHOME/.config/zsh

mkdir -p $ZDOTDIR
cp ./zshrc $ZHOME/.zshrc
cp ./p10k.zsh $ZHOME/.p10k.zsh
cp ./aliases.zsh $ZDOTDIR/

