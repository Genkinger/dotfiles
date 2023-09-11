#! /usr/bin/env bash
BASE=$(realpath .)
cp $BASE/nixos/*.nix /etc/nixos/

while getopts i flag
do
	case "${flag}" in
		i) nixos-rebuild switch;;
	esac
done

