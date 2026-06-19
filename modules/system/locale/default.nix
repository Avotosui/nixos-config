{
  flake.modules.nixos.system-locale = {
    time.timeZone = "America/New_York";

    i18n = {
      defaultLocale = "en_US.UTF-8";
    };
  };
}
