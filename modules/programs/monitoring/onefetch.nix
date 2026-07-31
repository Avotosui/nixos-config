{
  flake.modules.homeManager.programs-monitoring-onefetch = {pkgs, ...}: {
    home.packages = with pkgs; [onefetch];
  };
}
