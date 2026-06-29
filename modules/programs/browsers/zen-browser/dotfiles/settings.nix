{
  flake.modules.homeManager.programs-browsers-zen-browser = {
    programs.zen-browser.profiles.default.settings = {
      "zen.workspaces.continue-where-left-off" = true;
      "zen.workspaces.natural-scroll" = true;
      "zen.view.compact.hide-tabbar" = true;
      "zen.view.compact.hide-toolbar" = true;
      "zen.view.compact.animate-sidebar" = false;
      "zen.welcome-screen.seen" = true;
      "zen.urlbar.behavior" = "float";
    };
  };
}
