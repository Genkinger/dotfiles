#! /usr/bin/env bash

BASE="$(realpath .)"

rm -r ~/.config/helix
ln -s $BASE/helix ~/.config/helix
rm -r ~/.config/i3
ln -s $BASE/i3 ~/.config/i3
rm -r ~/.config/kitty
ln -s $BASE/kitty ~/.config/kitty
