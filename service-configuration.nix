{config, pkgs, ...}:

{
    imports = [
        #./video-xserver-configuration.nix
        ./video-wayland-configuration.nix
    ];
    
    services = {
        locate.enable = true;
        printing.enable = true;
    };
    
}