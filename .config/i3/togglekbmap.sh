#!/usr/bin/env bash

TOGGLE=$HOME/.keymap_german

if [ ! -e $TOGGLE ]; then
  touch $TOGGLE
  setxkbmap de
else
  rm $TOGGLE
  setxkbmap us
fi
