{
  flake.modules.homeManager.programs-multimedia-videos-kdenlive = {pkgs, ...}: {
    home.packages = with pkgs.kdePackages; [kdenlive];
  };
}
