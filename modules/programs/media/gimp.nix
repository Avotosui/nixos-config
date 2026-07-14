{
  flake.modules.homeManager.programs-media-gimp = {pkgs, ...}: {
    home.packages = with pkgs; [gimp];
  };
}
