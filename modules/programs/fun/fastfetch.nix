{
  flake.modules.homeManager.programs-fun-fastfetch = {pkgs, ...}: {
    home.packages = with pkgs; [fastfetch];
  };
}
