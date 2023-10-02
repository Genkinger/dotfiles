# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{ config, pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./packages.nix
    ./services.nix
    ./mounts.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hardware.bluetooth.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.enable = true;
  hardware.sane.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.initrd.kernelModules = [
    "vfio_pci"
    "vfio"
    "vfio_iommu_type1"
    "vfio_virqfd"
    "amdgpu"
  ];
  boot.kernelParams = [ "amd_iommu=on" "vfio-pci.ids=10de:13c2,10de:0fbb" ];
  boot.supportedFilesystems = [ "ntfs" ];

  systemd.tmpfiles.rules = [ "f /dev/shm/looking-glass 0600 leah libvirtd -" ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ 4010 ];
  };

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.utf8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.utf8";
    LC_IDENTIFICATION = "de_DE.utf8";
    LC_MEASUREMENT = "de_DE.utf8";
    LC_MONETARY = "de_DE.utf8";
    LC_NAME = "de_DE.utf8";
    LC_NUMERIC = "de_DE.utf8";
    LC_PAPER = "de_DE.utf8";
    LC_TELEPHONE = "de_DE.utf8";
    LC_TIME = "de_DE.utf8";
  };

  security.rtkit.enable = true;

  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  programs.zsh.enable = true;
  programs.dconf.enable = true;
  programs.ssh.startAgent = true; 
  environment.variables.RANGER_LOAD_DEFAULT_RC= "false";
  environment.variables.EDITOR = "hx"; 
 environment.shells = with pkgs; [ zsh ];
  users.users.leah = {
    isNormalUser = true;
    description = "Leah";
    extraGroups =
      [ "networkmanager" "wheel" "libvirtd" "lp" "scanner" "dialout" ];
    shell = pkgs.zsh;
  };

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    google-fonts
  ];

  systemd.services.libvirtd.preStart = let
    qemuHook = pkgs.writeScript "qemu-hook" ''
      #!${pkgs.stdenv.shell}
      if [ "$1" = "Windows" ]; then

         	# Update the following variables to fit your setup
         	GUEST_IP="192.168.122.15"
         	GUEST_PORT="7777"
         	HOST_PORT="7777"

         	if [ "$2" = "stopped" ] || [ "$2" = "reconnect" ]; then
      		${pkgs.iptables}/bin/iptables -D FORWARD -o virbr0 -d  $GUEST_IP -j ACCEPT
      		${pkgs.iptables}/bin/iptables -t nat -D PREROUTING -p tcp --dport $HOST_PORT -j DNAT --to $GUEST_IP:$GUEST_PORT
         	fi
         	if [ "$2" = "start" ] || [ "$2" = "reconnect" ]; then
      		${pkgs.iptables}/bin/iptables -I FORWARD -o virbr0 -d  $GUEST_IP -j ACCEPT
      		${pkgs.iptables}/bin/iptables -t nat -I PREROUTING -p tcp --dport $HOST_PORT -j DNAT --to $GUEST_IP:$GUEST_PORT
         	fi
      fi
    '';
  in ''
      		mkdir -p /var/lib/libvirt/hooks
      		chmod 755 /var/lib/libvirt/hooks

      		# Copy hook files
      		ln -sf ${qemuHook} /var/lib/libvirt/hooks/qemu
    	'';
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
