# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
    imports =
    [
      ./hardware-configuration.nix
      ./boot-configuration.nix
      ./environment-configuration.nix
      ./font-configuration.nix
      ./network-configuration.nix
      ./service-configuration.nix
    ];

    nixpkgs.config = {
        allowUnfree = true;
    };
  
    time.timeZone = "Europe/Berlin";
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    hardware.opengl.driSupport32Bit = true;

    fileSystems = {
	    "/mnt/mass-storage" = {
		    device = "/dev/disk/by-id/ata-ST2000DM001-1CH164_Z1E7S4F8-part1";
		    fsType = "ntfs";
	    };
    };

    users.users.genkinger = {
        isNormalUser = true;
     	extraGroups = [ "wheel" "audio" "video" "sway" ];
        home = "/home/genkinger";
        description = "Lukas Genkinger";
    };

    system.stateVersion = "19.03"; # Did you read the comment?

    i18n.inputMethod.enabled = "fcitx";
    i18n.inputMethod.fcitx.engines = with pkgs.fcitx-engines; [ mozc ];

}
