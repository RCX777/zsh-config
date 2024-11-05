#!/usr/bin/env bash

DIR="$(dirname "$0")"

ZHOME="${1:-$HOME}"
ZDOTDIR="$ZHOME/.config/zsh"

mkdir -p $ZDOTDIR
cp $DIR/zshrc $ZHOME/.zshrc
cp $DIR/p10k.zsh $ZHOME/.p10k.zsh
cp $DIR/aliases.zsh $ZDOTDIR/

