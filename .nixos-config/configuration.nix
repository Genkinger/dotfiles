{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  powerManagement.enable = true;
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;
  networking.hostName = "nixos-laptop"; # Define your hostname.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  security.rtkit.enable = true;
  

  users.users.leah = {
    isNormalUser = true;
    description = "Leah Genkinger";
    extraGroups = [ "networkmanager" "wheel" "dialout" "audio" "video" ];
    packages = with pkgs; [];
  };

  nixpkgs.config.allowUnfree = true;

  programs.dconf.enable = true;
  programs.light.enable = true;
    
  
  environment.systemPackages = with pkgs; [
  	unstable.helix
  	git
    kitty
    firefox
    prismlauncher
    discord
    pavucontrol
    lxappearance
    unstable.jujutsu
    unstable.factorio
    tmux
    emacs
    stow
    gthumb
    pcmanfm
    just
    bottles
  ];
  # services.tlp = {
  #   enable = true;
  #   settings = {
  #     CPU_SCALING_GOVERNOR_ON_AC = "performance";
  #     CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

  #     CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
  #     CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

  #     CPU_MIN_PERF_ON_AC = 0;
  #     CPU_MAX_PERF_ON_AC = 100;
  #     CPU_MIN_PERF_ON_BAT = 0;
  #     CPU_MAX_PERF_ON_BAT = 20;

  #     START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
  #     STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
  #   }; 
  # };
    programs.ssh.startAgent = true;
    services.auto-cpufreq.enable = true;
    services.auto-cpufreq.settings = {
      battery = {
         governor = "powersave";
         turbo = "never";
      };
      charger = {
         governor = "performance";
         turbo = "auto";
      };
    };

    
  services.xserver = {
    enable = true;
    dpi = 140;
    videoDrivers = ["amdgpu"];
    displayManager = {defaultSession = "none+i3";};
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [ dmenu i3status i3lock i3blocks rofi ];
      
    };
    wacom.enable = true;
    libinput.enable = true;
    libinput.touchpad.naturalScrolling = true;
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
      shadow-opacity = 0.5;
      fading = true;
      backend = "glx";
      active-opacity = 1;
      inactive-opacity = 0.8;
      blur-method = "dual_kawase";
      blur-strength = 3;
      rounded-corners-exclude = ["class_g = 'i3bar'"];
      
    };
    opacityRules = ["100:class_g = 'firefox'"];
  };
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;  

  system.stateVersion = "23.11"; # Did you read the comment?
}
