{
  flake.modules.homeManager.programs-media-magick = {pkgs, ...}: {
    home.packages = with pkgs; [imagemagick];
  };
}
