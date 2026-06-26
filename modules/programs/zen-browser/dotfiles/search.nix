{
  flake.modules.homeManager.programs-zen-browser = {
    programs.zen-browser.profiles.default.search = {
      force = true;
      default = "google";
      privateDefault = "ddg";
    };
  };
}
