{ pkgs, ... }: {
  home.packages = [
    pkgs.libreoffice-still
    
    pkgs.hunspell
    pkgs.hunspellDicts.uk_UA
    pkgs.hunspellDicts.en_US
  ];
  
  home.sessionVariables = {
    DICPATH = "$HOME/.nix-profile/share/hunspell:$HOME/.local/share/hunspell";
  };
}