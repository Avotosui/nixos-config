{
  flake.modules.homeManager.programs-utilities-onefetch = {pkgs, ...}: {
    home.packages = with pkgs; [onefetch];
  };
}
