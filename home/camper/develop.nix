{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "camper";
    userEmail = "minkotaras@gmail.com";
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
  };
}