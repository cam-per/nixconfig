{ ... }: {
  fileSystems."/" = { 
    device = "/dev/disk/by-uuid/155c33c7-3d98-4123-895a-f58b72b93db7";
    fsType = "ext4";
  };

  fileSystems."/boot" = { 
    device = "/dev/disk/by-uuid/717C-7B02";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  fileSystems."/mnt/develop" = {
    device = "/dev/disk/by-uuid/0D6B7E4924077100";
    fsType = "ntfs3";
    options = [ "rw" "uid=1000" "gid=100" "nofail" "force" "prealloc" "discard" "windows_names" ];
  };

  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/24C8ED27C8ECF846";
    fsType = "ntfs3";
    options = [ "rw" "uid=1000" "gid=100" "nofail" "force" "windows_names"];
  };
  
  swapDevices = [ ];
}