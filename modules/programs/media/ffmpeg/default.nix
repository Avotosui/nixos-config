{
  flake.modules.homeManager.programs-media-ffmpeg = {pkgs, ...}: {
    home.packages = with pkgs; [ffmpeg];
  };
}
