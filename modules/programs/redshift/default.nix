{
  flake.modules.homeManager.programs-redshift = {pkgs, ...}: {
    services.redshift = {
      enable = true;
      tray = true;
      provider = "geoclue2";
    };
  };
}
