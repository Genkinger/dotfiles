{
  inputs = {
    stable.url = "github:nixos/nixpkgs/nixos-23.11";
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {self, nixpkgs, ...}@inputs :
  {
    nixosConfigurations.nixos-laptop = inputs.stable.lib.nixosSystem {
      system = "x86_64";
      modules = [
      ./configuration.nix
      ({nixpkgs.overlays = [self.overlays.pkg-sets];})
      ];
    };
    overlays = {
      pkg-sets = (
        final: prev: {
          stable = import inputs.stable {system = final.system; config.allowUnfree = true;};
          unstable = import inputs.unstable {system = final.system; config.allowUnfree = true; config.packageOverrides = pkgs : { factorio = pkgs.factorio.override { username = "LoLifeLeah"; token = "4801c94fcc6a1563499f210bf64b7b";};};};
        }
      );
    };
  };
}
