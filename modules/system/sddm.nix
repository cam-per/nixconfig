{ pkgs, ... }: {
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true; 
    theme = "maya";
  };
  services.displayManager.sessionPackages = [ ]; 
}