{
  flake.modules.homeManager.programs-development-tree = {pkgs, ...}: {
    home.packages = with pkgs; [tree];
  };
}
