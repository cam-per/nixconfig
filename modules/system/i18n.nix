{ pkgs, ...} : {
  time = {
    timeZone = "Europe/Kyiv";
    hardwareClockInLocalTime = true;
  };

  i18n.defaultLocale = "uk_UA.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "uk_UA.UTF-8";
    LC_IDENTIFICATION = "uk_UA.UTF-8";
    LC_MEASUREMENT = "uk_UA.UTF-8";
    LC_MONETARY = "uk_UA.UTF-8";
    LC_NAME = "uk_UA.UTF-8";
    LC_NUMERIC = "uk_UA.UTF-8";
    LC_PAPER = "uk_UA.UTF-8";
    LC_TELEPHONE = "uk_UA.UTF-8";
    LC_TIME = "uk_UA.UTF-8";
  };

  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true; 
  };

  services.xserver.xkb = {
    layout = "us,ua,ru";
    variant = "";
    options = "grp:win_space_toggle";
  };
}