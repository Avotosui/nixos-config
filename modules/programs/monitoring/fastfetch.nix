{
  flake.modules.homeManager.programs-monitoring-fastfetch = {pkgs, ...}: {
    home.packages = with pkgs; [fastfetch];
  };
}
