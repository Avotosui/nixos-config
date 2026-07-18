{
  flake.modules.homeManager.programs-browsers-vivaldi = {pkgs, ...}: {
    home.packages = with pkgs; [
      vivaldi
      vivaldi-ffmpeg-codecs
    ];
  };
}
