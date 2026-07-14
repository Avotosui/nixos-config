{
  flake.modules.homeManager.programs-development-file = {pkgs, ...}: {
    home.packages = with pkgs; [file];
  };
}
