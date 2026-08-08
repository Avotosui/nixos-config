{
  flake.modules.homeManager.programs-multimedia-images-gimp = {pkgs, ...}: {
    home.packages = with pkgs; [gimp];
  };
}
