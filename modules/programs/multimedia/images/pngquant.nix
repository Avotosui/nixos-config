{
  flake.modules.homeManager.programs-multimedia-images-pngquant = {pkgs, ...}: {
    home.packages = with pkgs; [pngquant];
  };
}
