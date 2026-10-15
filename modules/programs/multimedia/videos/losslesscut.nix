{
  flake.modules.homeManager.programs-multimedia-videos-losslesscut = {pkgs, ...}: {
    home.packages = with pkgs; [losslesscut];
  };
}
