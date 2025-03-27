#!/usr/bin/env bash

BASE_DIR="$(dirname "$0")"

ZHOME="${1:-$HOME}"
ZDOTDIR="$ZHOME/.config/zsh"

mkdir -pv $ZDOTDIR
cp -v $BASE_DIR/zshrc $ZHOME/.zshrc
cp -v $BASE_DIR/p10k.zsh $ZHOME/.p10k.zsh
cp -v $BASE_DIR/aliases.zsh $ZDOTDIR/
cp -v $BASE_DIR/env.zsh $ZDOTDIR/

