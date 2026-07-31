{
  flake.modules.homeManager.programs-utilities-fastfetch = {pkgs, ...}: {
    home.packages = with pkgs; [fastfetch];
  };
}
