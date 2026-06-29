{
  flake.modules.homeManager.programs-utilities-tree = {pkgs, ...}: {
    home.packages = with pkgs; [tree];
  };
}
