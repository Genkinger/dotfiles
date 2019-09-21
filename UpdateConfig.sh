CWD=$(pwd)

sudo cp "$CWD/configuration.nix" /etc/nixos/
sudo nixos-rebuild switch $@
