{
  flake.modules.homeManager.programs-productivity-zbar = {pkgs, ...}: {
    home.packages = with pkgs; [zbar];
  };
}
