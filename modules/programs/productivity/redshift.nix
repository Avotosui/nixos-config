{
  flake.modules.homeManager.programs-productivity-redshift = {
    services.redshift = {
      enable = true;
      tray = true;
      provider = "geoclue2";
    };
  };
}
