{ config, pkgs, inputs, ... }: 
  let
  pkgs-stable = import inputs.nixpkgs-stable {
    system = pkgs.system;
    config.allowUnfree = true;
  };
in {  
  imports = [
    ./disks.nix

    ../../modules/hardware
    ../../modules/hardware/amd.nix
    ../../modules/hardware/nvidia.nix

    ../../modules/system
    ../../modules/system/grub.nix
    ../../modules/system/i18n.nix
    ../../modules/system/fonts.nix
    ../../modules/system/graphics.nix
    ../../modules/system/pipewire.nix
    ../../modules/system/sddm.nix
    ../../modules/system/plasma6.nix

    inputs.home-manager.nixosModules.home-manager
  ];

  networking.hostName = "camper-desktop";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit pkgs; };
    users.camper = import ../../home/camper; 
  };

  users.users.camper = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}