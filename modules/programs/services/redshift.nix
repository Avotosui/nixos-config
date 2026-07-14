{
  flake.modules.homeManager.programs-services-redshift = {
    services.redshift = {
      enable = true;
      tray = true;
      provider = "geoclue2";
    };
  };
}
