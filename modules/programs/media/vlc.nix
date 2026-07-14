{
  flake.modules.homeManager.programs-media-vlc = {pkgs, ...}: {
    home.packages = with pkgs; [vlc];
  };
}
