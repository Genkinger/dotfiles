{config,pkgs,...}:
{
    programs= {
        sway = {
            enable = true;
            extraPackages = with pkgs; [ swaylock swayidle xwayland rofi dmenu grim weston ];
        };
        light.enable = true;
    };
}