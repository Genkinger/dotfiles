{ config, pkgs, ... }: {
  services.gvfs.enable = true;
  services.printing.enable = true;
  services.blueman.enable = true;
  services.xserver = {
    videoDrivers = [ "amdgpu" ];
    enable = true;
    displayManager = { defaultSession = "none+i3"; };
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-rounded;
      extraPackages = with pkgs; [ dmenu i3status i3lock i3blocks ];
    };
    wacom.enable = true;
    layout = "us";
    xkbVariant = "";
  };
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
  services.picom = {
    enable = true;
    settings = {
      shadow = true;
      full-shadow = true;
      fading = true;
      backend = "glx";
    };
  };
  services.avahi = {
    enable = true;
    nssmdns = true;
    openFirewall = true;
  };
}
