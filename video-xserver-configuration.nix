{config, pkgs,...}:

{
    services.xserver = {
        enable = true;
        layout = "us";
        wacom.enable = true;
        videoDrivers = [ "nvidia" ];

        windowManager.i3 = { 
            enable = true;
            package = pkgs.i3-gaps;
            extraPackages = with pkgs; [
                dmenu
                i3status
                i3lock
                i3blocks
            ];
        };
    };
}