{
  flake.modules.programs-browsers-zen = {
    programs.zen-browser.profiles.default = {
      containersForce = true;
      presets.betterfox.enable = true;
    };
  };
}
