# nixconf
My personal NixOs Configuration and various other dotfiles and helpers.
Feel free to fork.

## LinkDotfiles.sh
Helper script.
SymLinks the dotfiles to their respective positions (i3, kitty, vim etc.)

## UpdateConfig.sh
Helper script. 
Copies the `configuration.nix` to `/etc/nixos/configuration.nix` and calls `nixos-rebuild switch`.
