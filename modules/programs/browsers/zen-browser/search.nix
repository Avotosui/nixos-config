{
  flake.modules.homeManager.programs-browsers-zen-browser = {
    programs.zen-browser.profiles.default.search = {
      force = true;
      default = "google";
      privateDefault = "ddg";
    };
  };
}
