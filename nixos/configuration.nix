{ config, pkgs, ... }: {
  imports = [ ./hardware-configuration.nix ];

  nixpkgs.config.allowUnfree = true;
  hardware.bluetooth.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.enable = true;
  hardware.sane.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.initrd.kernelModules =
    [ "vfio_pci" "vfio" "vfio_iommu_type1" "vfio_virqfd" "amdgpu" ];
  boot.kernelParams = [ "amd_iommu=on" "vfio-pci.ids=10de:13c2,10de:0fbb" ];
  boot.supportedFilesystems = [ "ntfs" ];

  systemd.tmpfiles.rules = [
    "f /dev/shm/looking-glass 0600 leah libvirtd -"
    "L+  /opt/rocm/clr  -  -  -  -  ${pkgs.rocmPackages.clr}"
  ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ 4010 25565 ];
    allowedTCPPorts = [ 25565 ];
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
  environment.variables.RANGER_LOAD_DEFAULT_RC = "false";
  environment.variables.EDITOR = "hx";
  environment.shells = with pkgs; [ zsh ];
  environment.systemPackages = with pkgs; [
    bottles
    nixfmt
    discord
    vscode-langservers-extracted
    distrho
    vital
    transmission_4-gtk
    spotify
    ols
    odin
    mpv
    flameshot
    inkscape
    emacs-gtk
    xournalpp
    git
    ffmpeg
    audacity
    pandoc
    firefox
    pcmanfm
    unzip
    chromium
    libreoffice-fresh
    ripgrep
    htop
    xarchiver
    wget
    gthumb
    tree-sitter
    prusa-slicer
    feh
    nil
    renoise
    clang-tools
    jdk17
    kitty
    graphite2
    marksman
    prismlauncher
    zathura
    reaper
    qpwgraph
    kitty-themes
    pavucontrol
    xclip
    black
    virt-manager
    arandr
    looking-glass-client
    scream
    unrar
    fzf
    (python311.withPackages (ps: [
      ps.matplotlib
      ps.torch-bin
      ps.opencv4
      ps.python-lsp-server
      ps.rope
      ps.scikit-learn
      ps.pyflakes
      ps.pyglet
      ps.pyaudio
      ps.bokeh
      ps.pandas
      ps.scipy
      ps.click
      ps.seaborn
    ]))
    zig
    zls
    oh-my-zsh
    ranger
    highlight
    ffmpegthumbnailer
    atool
    tmux
    xorg.xkill
    rustup
    zsh
  ];
  users.users.leah = {
    isNormalUser = true;
    description = "Leah";
    extraGroups =
      [ "networkmanager" "wheel" "libvirtd" "lp" "scanner" "dialout" ];
    shell = pkgs.zsh;
  };
  fileSystems."/mnt/files" = {
    device = "/dev/disk/by-uuid/2B9091AE40C030FA";
    fsType = "ntfs";
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    google-fonts
    gyre-fonts
  ];

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
  # DO NOT CHANGE THIS VERSION
  system.stateVersion = "22.05";

}
