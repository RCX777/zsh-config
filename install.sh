#!/usr/bin/env bash

BASE_DIR="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"

ZHOME="${1:-$HOME}"
ZDOTDIR="$ZHOME/.config/zsh"

mkdir -pv $ZDOTDIR
cp -v $BASE_DIR/zshrc $ZHOME/.zshrc
cp -v $BASE_DIR/p10k.zsh $ZHOME/.p10k.zsh
cp -v $BASE_DIR/aliases.zsh $ZDOTDIR/
cp -v $BASE_DIR/env.zsh $ZDOTDIR/

