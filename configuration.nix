# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; 
  # networking.wireless.enable = true;

  networking.useDHCP = false;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.wlp4s0.useDHCP = true;

  time.timeZone = "Europe/Berlin";

  environment.systemPackages = with pkgs; 
	[
    		wget 
		emacs
		alacritty
		kitty
		firefox
		xmobar
		stalonetray
		git
		];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  #   pinentryFlavor = "gnome3";
  # };


  sound.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver = {
	enable = true;
	libinput.enable = true;
	desktopManager = {
		xterm.enable = false;
	};
	displayManager = {
		defaultSession = "none+i3";
	};
	windowManager.i3 = {
		package = pkgs.i3-gaps;
		enable = true;
		extraPackages = with pkgs; [dmenu i3status i3lock i3blocks];
	};
	windowManager.xmonad = {
	    	enable = true;
	    	enableContribAndExtras = true;
      	    	extraPackages = haskellPackages: [
        		      haskellPackages.xmonad-contrib
        		      haskellPackages.xmonad-extras
        		      haskellPackages.xmonad
      		];
    	};
	};

  fonts = {
  	fonts = with pkgs; [
	ubuntu_font_family
	noto-fonts
	noto-fonts-cjk
	noto-fonts-emoji
	fira-code
	fira-code-symbols ];
  };

  users.users.lucy = {
	isNormalUser = true;
	extraGroups = [ "wheel" ];
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.03"; # Did you read the comment?

}
