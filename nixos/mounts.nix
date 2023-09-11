{ config, pkgs, ... }: {
  fileSystems."/mnt/files" = {
    device = "/dev/disk/by-uuid/2B9091AE40C030FA";
    fsType = "ntfs";
  };
}
