{
  flake.modules.homeManager.programs-fun-onefetch = {pkgs, ...}: {
    home.packages = with pkgs; [onefetch];
  };
}
