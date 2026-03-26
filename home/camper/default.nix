{  pkgs, ... }: {
  imports = [
    ../../modules/home
    ../../modules/home/google-chrome.nix
    ../../modules/home/libreoffice.nix

    ./develop.nix
    ./messangers.nix
  ];

  home.username = "camper";
  home.homeDirectory = "/home/camper";
  home.stateVersion = "25.11";
  
  programs.home-manager.enable = true;
}