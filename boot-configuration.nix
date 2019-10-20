{config,pkgs,...}:

{
    boot.loader.grub = {
        enable = true;
        version = 2;
        useOSProber = true;
        device = "/dev/sda"; 
    };
    boot.supportedFilesystems = [ "zfs" ];
}