{ pkgs, ... }: {
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    mc
    fastfetch
    tree
    wget
  ];
}