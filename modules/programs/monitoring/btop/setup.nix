{
  flake.modules.homeManager.programs-monitoring-btop = {pkgs, ...}: {
    programs.btop = {
      enable = true;
      settings = {
        vim_keys = true;
        color_theme = "tokyo-night";
      };
    };
  };
}
