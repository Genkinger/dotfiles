#! /usr/bin/env bash

BASE="$(realpath .)"

rm -r ~/.config/nvim
ln -s $BASE/nvim ~/.config/nvim
rm -r ~/.config/i3
ln -s $BASE/i3 ~/.config/i3
rm -r ~/.config/kitty
ln -s $BASE/kitty ~/.config/kitty
