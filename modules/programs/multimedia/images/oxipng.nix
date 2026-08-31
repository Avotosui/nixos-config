{
  flake.modules.homeManager.programs-multimedia-images-oxipng = {pkgs, ...}: {
    home.packages = with pkgs; [oxipng];
  };
}
