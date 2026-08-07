{
  flake.modules.homeManager.programs-utilities-file = {pkgs, ...}: {
    home.packages = with pkgs; [file];
  };
}
